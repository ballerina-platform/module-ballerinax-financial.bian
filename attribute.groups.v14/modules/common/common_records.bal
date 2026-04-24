import ballerina/http;

# A collection of one or more responsibilities or tasks under management
#
# Examples: Relationship development, Troubleshooting
public type Troubleshooting record {
    # A record of any production issues arising during the session (see E-Branch Operations for detailed content)
    ProductionIssue eBranchChannelProductionIssueRecord?;
    # A record of the root cause analysis for recurring issues and suggested remedial action
    string eBranchChannelIssueAnalysisAndRecommendedResponse?;
};

# The raw data used in the analysis (retrieved from Servicing Activity History)
public type Report record {
    # >
    # * `FinancialReport` - 
    # * `BusinessReport` - 
    # * `ManagementReport` - 
    # * `Statement` - 
    # * `MaintenanceReport` - 
    # * `RegulatoryReport` - 
    # * `TaxReport` - 
    # * `AnalysisReport` - 
    Reporttypevalues ReportType?;
    # The period covered by the analysis (from to date time)
    Datetimeperiod ReportValidityPeriod?;
    # ReportVersion
    string ReportVersion?;
    # The date when the identifier became valid.
    Datetime ReportDateTime?;
    # ReportFormat
    string ReportFormat?;
};

# Reference to an entity that assigns and manages the identification.
# tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
public type Involvedparty record {
    # Reference to a Party who plays a specific role
    string PartyReference?;
    # Reference to a specific Role that is played by a Party
    string InvolvementReference?;
};

# The result of the servicing activity analysis - typically the consolidated view from applying multiple underlying root cause algorithms to highlight patterns that indicate potential root cause issues
public type Analysis record {
    # >
    # * `PerformanceAnalysis` - 
    # * `ActivityAnalysis` - 
    # * `RevenueAnalysis` - 
    # * `CostAnalysis` - 
    # * `PredictiveAnalysis` - 
    # * `BehavioralAnalysis` - 
    # * `ProfitabilityAnalysis` - 
    # * `CompetitiveAnalysis` - 
    # * `CohortAnalysis` - 
    # * `SegmentAnalysis` - 
    # * `SWOTAnalysis` - 
    # * `Benchmarking` - 
    # * `PositioningAnalysis` - 
    # * `ScenarioAnalysis` - 
    # * `IntelligenceGathering` - 
    # * `Profiling` - 
    Analysistypevalues AnalysisType?;
    # AnalysisResult
    string AnalysisResult?;
    # The period covered by the analysis (from to date time)
    Datetimeperiod AnalysisPeriod?;
    # The date when the identifier became valid.
    Datetime AnalysisDateTime?;
    # AnalysisSpecification
    string AnalysisSpecification?;
    # The schedule and timing of the analysis performed using the algorithm
    Schedule AnalysisSchedule?;
};

# The schedule and timing of the analysis performed using the algorithm
public type Schedule record {
    # ScheduleType
    string ScheduleType?;
};

public type Location record {
    # A description of the property, particularly if it has landmark characteristics.
    string LocationDescription?;
    # Date and time at which the range starts. (ISO20022)
    Datetime LocationDateTime?;
    # LocationStatus
    Status LocationStatus?;
    # >
    # * `Continent` - 
    # * `Country` - 
    # * `State` - 
    # * `District` - 
    # * `Province` - 
    # * `Town` - 
    # * `City` - 
    # * `Region` - 
    Geographicalareatypevalues LocationType?;
    # The planning or zoning status (e.g. residential, commercial, industrial).
    string LocationZoningType?;
    # The general purpose and neighborhood of the property  (e.g. residential, industrial, commercial).
    string LocationNeighborhoodType?;
    # The construction approach for a property at the location (e.g. era and architecture as might be used in valuation).
    string LocationConstructionType?;
    # The type of occupancy (e.g. residency, business, retail, entertainment).
    string LocationOccupancyType?;
    # The estimated (book) value of the property at the location - rental and purchase as appropriate.
    string LocationValue?;
    # An indication of the size or scale of the property where appropriate (e.g. 4 bedroom, 600 seat auditorium, 40 cover restaurant).
    string LocationCapacity?;
    # LocationIdentification
    Identifier LocationIdentification?;
    # Reference to the address of location
    string LocationAddress?;
    # LocationName
    Name LocationName?;
    # Local time zone.
    string LocationTimeZone?;
};

# The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement, are entered.
public type Address record {
    # >
    # * `PostalAddress` - 
    # * `GeolocationAddress` - 
    # * `LatitudeAddress` - 
    # * `LongitudeAddress` - 
    # * `ElectronicAddress` - 
    Addresstypevalues AddressType?;
    # AddressDescription
    string AddressDescription?;
};

# Key dates associated with the assignment request (e.g. order date, confirmation date, delivery date)
public type Date record {
    # DateContent
    string DateContent?;
};

public type Subject record {
    # A thing that is discussed or dealt whit in agreement/arrangement about doing or not doing (as action) something.
    string Subject?;
};

# A characteristic of transaction which refers to the LifecycleStatus of transaction (e.g., initiated, executed, confirmed, cancelled, etc.) 
public type Transactionstatus record {
    # TransactionStatus
    Status TransactionStatus?;
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
    Transactionstatustypevalues TransactionStatusType?;
};

# An identifier that allows to uniquely refer to an instance of an Instruction.
public type Instructionidentification record {
    # The identifier of Condition
    Identifier InstructionIdentification?;
    # >
    # * `OrderNumber` - 
    # * `InstructionNumber` - 
    Instructionidentificationtypevalues InstructionIdentificationType?;
};

public type Action record {
    # An event related to the behaviour performed by an actor. 
    #
    # Comment:
    # An actor can be a party or a machine
    # An action Includes various types of requests, orders and financial transactions. Includes responses where appropriate.
    # An action is an event which means that the concept describes the result of acting.
    string Action?;
    # >
    # * `Initiate` - 
    # * `Execute` - 
    # * `Create` - 
    # * `Transfer` - 
    # * `Pay` - 
    # * `Deliver` - 
    # * `Apply` - 
    # * `Calculate` - 
    Actiontypevalues ActionType?;
    # EventType
    string EventType?;
    # Date and time at which the range starts. (ISO20022)
    Datetime EventDateTime?;
    # EventDescription
    string EventDescription?;
    # EventSource
    string EventSource?;
    # EventLocation
    Location EventLocation?;
    # EventAction
    Action EventAction?;
    # EventStatus
    Status EventStatus?;
    # EventValue
    string EventValue?;
    # EventValidityPeriod
    Datetimeperiod EventValidityPeriod?;
    # EventIdentification
    Identifier EventIdentification?;
};

# File of consolidated work notes, testing results, agreements etc. for the work task
public type Workproduct record {
    # >
    # * `Document` - 
    # * `WorkingPaper` - 
    # * `ActivityLog` - 
    # * `Form` - 
    # * `File` - File of consolidated notes, evaluations and recommendations for the work task
    # * `MeetingSchedule` - 
    # * `MeetingMinute` - 
    Workproducttypevalues WorkProductType?;
    # WorkProductIdentifoication
    Identifier WorkProductIdentifoication?;
};

# The users are registered to access different services/information made available through the switch - it is used to control information distribution
public type Arrangement record {
    # ArrangementAction
    Action ArrangementAction?;
    # ArrangementStartDate
    Datetime ArrangementStartDate?;
    # ArrangementEndDate
    Datetime ArrangementEndDate?;
    # A characteristic of arrangement which refers to the LifecycleStatus of arrangement (e.g., requested, proposed, offered, accepted, cancelled, terminated, fulfilled, etc.)
    Arrangementstatus ArrangementStatus?;
    # ArrangementSubjectMatter
    Subject ArrangementSubjectMatter?;
    # >
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - Arrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    Arrangementtypevalues Arrangementtype?;
    # ArrangementIdentification
    Identifier ArrangementIdentification?;
};

# An arrangement which is specifying an estimate of costs, revenues, and resources over a specified period, reflecting a reading of future financial conditions and goals. (adapted from Business Dictionary)
public type Budgetarrangement record {
    # A Classification value that specifies the type of Budget
    Budgettype BudgetType?;
    # Base amount that would be applied when the service is requested. 
    Amount BudgetAmount?;
    # ArrangementAction
    Action ArrangementAction?;
    # Date and time at which the range starts. (ISO20022)
    Datetime ArrangementStartDate?;
    # Date and time at which the range starts. (ISO20022)
    Datetime ArrangementEndDate?;
    # A characteristic of arrangement which refers to the LifecycleStatus of arrangement (e.g., requested, proposed, offered, accepted, cancelled, terminated, fulfilled, etc.)
    Arrangementstatus ArrangementStatus?;
    # ArrangementSubjectMatter
    Subject ArrangementSubjectMatter?;
    # >
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - Arrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    Arrangementtypevalues Arrangementtype?;
    # ArrangementIdentification
    Identifier ArrangementIdentification?;
};

# An action that is arranged in a plan for doing or achieving something 
public type Plannedaction record {
    # ArrangementAction
    Action ArrangementAction?;
    # Date and time at which the range starts. (ISO20022)
    Datetime ArrangementStartDate?;
    # Date and time at which the range starts. (ISO20022)
    Datetime ArrangementEndDate?;
    # A characteristic of arrangement which refers to the LifecycleStatus of arrangement (e.g., requested, proposed, offered, accepted, cancelled, terminated, fulfilled, etc.)
    Arrangementstatus ArrangementStatus?;
    # ArrangementSubjectMatter
    Subject ArrangementSubjectMatter?;
    # >
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - Arrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    Arrangementtypevalues Arrangementtype?;
    # ArrangementIdentification
    Identifier ArrangementIdentification?;
};

# Base amount that would be applied when the service is requested. 
public type Amount record {
    # AmountValue
    string AmountValue?;
    # AmountCurrency
    Currencycode AmountCurrency?;
    # Decimal point position starts calulating from the right
    string DecimalPointPosition?;
    # >
    # * `Principal` - 
    # * `Actual` - Actual amount.
    # * `Estimated` - Estimated amount (the final amount could be above or below).
    # * `Maximum` - Maximum amount (the final amount must be less or equal).
    # * `Default` - Default amount.
    # * `Replacement` - Replacement amount.
    # * `Incremental` - Incremental amount for reservation.
    # * `Decremental` - Decremental amount for reservation.
    # * `Reserved` - Reserved or updated reserved amount for reservation.
    # * `Available` - 
    # * `Used` - 
    # * `DuePayable` - 
    # * `Minimum` - 
    # * `Open` - The amount is open.(ISO20022)
    # * `Unknown` - The amount is unkown.(ISO20022)
    # * `Fixed` - The amount represents a fixed value.(ISO20022)
    Amounttypevalues AmountType?;
};

# Date and time at which the range starts. (ISO20022)
public type Datetime record {
    # The particular date and time point in the progression of time
    string DateTimeContent?;
    # The time zone to which the date time refers.
    string TimeZoneCode?;
    # DaylightSavingIndicator
    string DaylightSavingIndicator?;
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
    Datetimetypevalues DateTimeType?;
};

# A characteristic of account which refers to the LifecycleStatus of account like opened, closed, blocked, etc.
#
# Specifies the current state of an account. (ISO20022)
public type Accountstatus record {
    # AccountStatus
    Status AccountStatus?;
    # >
    # * `Enabled` - Account can be used for its intended purpose.
    # * `Disabled` - Account cannot be used for its intended purpose, either temporarily or permanently.
    # * `Deleted` - Account cannot be used any longer.
    # * `Proforma` - Account is temporary and can be partially used for its intended purpose. The account will be fully available for use when the account servicer has received all relevant documents.
    # * `Pending` - Account change is pending approval.
    Accountstatustypevalues AccountStatusType?;
};

public type Status record {
    # Specifies the reasons for the status.
    string StatusReason?;
    # Date and time at which the range starts. (ISO20022)
    Datetime StatusDateTime?;
    # StatusValidityPeriod
    Datetimeperiod StatusValidityPeriod?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    Involvedparty StatusInvolvedPartyReference?;
};

public type Currencycode record {
    # A code identifying a currency according to ISO-4217.
    # A currency is a system of money in general use in a particular country.
    #
    # Code allocated to a currency, by a maintenance agency, under an international identification scheme as described in the latest edition of the international standard ISO 4217 "Codes for the representation of currencies and funds". Valid currency codes are registered with the ISO 4217 Maintenance Agency, and consist of three contiguous letters. (ISO20022)
    string Currencycode?;
};

public type Datetimeperiod record {
    # Date and time at which the range starts. (ISO20022)
    Datetime FromDateTime?;
    # Date and time at which the range starts. (ISO20022)
    Datetime ToDateTime?;
};

# The lifecycle status of Goal like Goal Setting, Planning, Execution, Monitoring and Evaluation, Completion or Achievement, Maintenance or Sustainment, Closure or Renewal
public type Goalstatus record {
    # GoalStatus
    Status GoalStatus?;
    # >
    # * `Setting` - 
    # * `Planning` - 
    # * `Execution` - 
    # * `MonitoringAndEvaluation` - 
    # * `CompletionOrAchievement` - 
    # * `MaintenanceOrSustainment` - 
    # * `ClosureOrRenewal` - 
    Goalstatustypevalues GoalStatusType?;
};

public type Goal record {
    # >
    # * `Short-TermGoal` - 
    # * `Long-TermGoal` - 
    # * `BusinessGoal` - 
    # * `PerformanceGoal` - 
    # * `FinancialGoal` - 
    # * `OutcomeGoal` - 
    # * `SMARTGoal` - 
    Goaltypevalues GoalType?;
    # The definition of Goal
    string GoalDefinition?;
    # GoalName
    Name GoalName?;
    # The key dates and times of Goal like Setting Data, Planning Date, Start Date, Review Date, Completion Date.
    Goaldatetime GoalDateAndTime?;
    # The lifecycle status of Goal like Goal Setting, Planning, Execution, Monitoring and Evaluation, Completion or Achievement, Maintenance or Sustainment, Closure or Renewal
    Goalstatus GoalStatus?;
};

public type Duration record {
    # A duration is the specification of a length of time without a fixed start or end time, expressed in Gregorian calendar time units (Year, Month, Week, Day) and Hours, Minutes or Seconds. (UN/CEFACT)
    string Duration?;
};

# The key dates and times of Goal like Setting Data, Planning Date, Start Date, Review Date, Completion Date.
public type Goaldatetime record {
    # Date and time at which the range starts. (ISO20022)
    Datetime GoalDateAndTime?;
    # >
    # * `SettingDate` - 
    # * `PlanningDate` - 
    # * `StartDate` - 
    # * `ReviewDate` - 
    # * `CompletionDate` - 
    Goaldatetimetypevalues GoalDateAndTimeType?;
};

# A characteristic of account which refers to LifecycleDate of account (e.g., ClosingDate, OpeningDate, LiveDate, etc.) 
public type Accountdatetime record {
    # >
    # * `OpeningDate` - Date on which the account and related basic services are effectively operational for the account owner. (ISO20022)
    # * `ClosingDate` - Date on which the account and related services cease effectively to be operational for the account owner. (ISO20022)
    # * `BlockingDate` - 
    # * `MaturityDate` - Maturity date for the account.
    # * `LiveDate` - 
    # * `RenewalDate` - 
    Accountdatetimetypevalues AccountDateType?;
    # Date and time at which the range starts. (ISO20022)
    Datetime AccountDate?;
};

# A Classification value that specifies the type of Budget
public type Budgettype record {
    # BudgetTypeName
    Name BudgetTypeName?;
    # >
    # * `OperatingBudget` - 
    # * `FinancialBudget` - 
    # * `ResourceBudget` - 
    Budgettypevalues BudgetType?;
};

# A characteristic of arrangement which refers to the LifecycleStatus of arrangement (e.g., requested, proposed, offered, accepted, cancelled, terminated, fulfilled, etc.)
public type Arrangementstatus record {
    # ArrangementStatus
    Status ArrangementStatus?;
    # >
    # * `Requested` - 
    # * `Proposed` - 
    # * `Offered` - 
    # * `Accepted` - 
    # * `Cancelled` - 
    # * `Fulfilled` - 
    # * `Terminated` - 
    Arrangementstatustypevalues ArrangementStatusType?;
};

# A characteristic of agreement which refers to the LifecycleStatus of agreement (e.g., potential, offered, confirmed, completed, signed, terminated).
public type Agreementstatus record {
    # AgreementStatus
    Status AgreementStatus?;
    # >
    # * `Offered` - 
    # * `Confirmed` - 
    # * `Completed` - 
    # * `Signed` - 
    # * `Terminated` - 
    # * `Rejected` - 
    Agreementstatustypevalues AgreementStatusType?;
};

public type Log record {
    # LogType
    string LogType?;
    # The validity period of Condition
    Datetimeperiod LogPeriod?;
    # The date when the identifier became valid.
    Datetime LogDate?;
    # The identifier of Condition
    Identifier LogIdentification?;
};

# The Date that the transaction has occurred or is planned to occur.
# A characteristic of transaction which refers to the LifecycleDate of transaction (e.g., initiated date, executed date, fulfillment date). 
public type Transactiondatetime record {
    # The date when the identifier became valid.
    Datetime TransactionDate?;
    # >
    # * `ExecutedDate` - 
    # * `FulfillmentDate` - 
    # * `InitiatedDate` - 
    # * `CancelledDate` - 
    # * `ApprovedDate` - 
    # * `ValueDate` - 
    # * `BookingDate` - 
    Transactiondatetimetypevalues TransactionDateType?;
};

# Reference to the party who is involved in Central Cash Allocation
public type CashAllocation record {
    # The amount allocated
    Amount AllocationAmount?;
    # duration for which the allocation is enforced
    Duration AllocationDuration?;
    # Indication if it is an allocation or recall
    string AllocationDirection?;
    # AllocationStatus
    Status AllocationStatus?;
    # AllocationDescription
    string AllocationDescription?;
    # The identifier of Condition
    Identifier TransactionIdentification?;
    # The Date that the transaction has occurred or is planned to occur.
    # A characteristic of transaction which refers to the LifecycleDate of transaction (e.g., initiated date, executed date, fulfillment date). 
    Transactiondatetime TransactionDate?;
    # >
    # * `FinancialTransaction` - 
    # * `BusinessTransaction` - 
    # * `BankingTransaction` - 
    # * `AccountingTransaction` - 
    # * `BookingTransaction` - 
    # * `AllocationTransaction` - 
    # * `DeliveryTransaction` - 
    # * `ProductionTransaction` - 
    Transactiontypevalues TransactionType?;
    # A detailed explanation or commentary of transaction.
    string TransactionDescription?;
    # A characteristic of transaction which refers to the LifecycleStatus of transaction (e.g., initiated, executed, confirmed, cancelled, etc.) 
    Transactionstatus TransactionStatus?;
    # The name of Condition
    Name TransactionName?;
    # >
    # * `Initiate` - 
    # * `Execute` - 
    # * `Create` - 
    # * `Transfer` - 
    # * `Pay` - 
    # * `Deliver` - 
    # * `Apply` - 
    # * `Calculate` - 
    Actiontypevalues ActionType?;
    # EventType
    string EventType?;
    # The date when the identifier became valid.
    Datetime EventDateTime?;
    # EventDescription
    string EventDescription?;
    # EventSource
    string EventSource?;
    # EventLocation
    Location EventLocation?;
    # EventAction
    Action EventAction?;
    # EventStatus
    Status EventStatus?;
    # EventValue
    string EventValue?;
    # The validity period of Condition
    Datetimeperiod EventValidityPeriod?;
    # The identifier of Condition
    Identifier EventIdentification?;
};

# Specifies the classification of session like Customer Contact Session, Channel Operating Session, Device Operating Session, etc.
public type Sessiontype record {
    # Name (label) of the location. (ISO20022)
    Name SessionTypeName?;
    # >
    # * `ContactHandlingSession` - 
    # * `CustomerDialogueSession` - 
    # * `ChannelOperatingSession` - 
    # * `GatewayOperatingSession` - 
    # * `SwitchOperatingSession` - 
    # * `DeviceOperatingSession` - 
    # * `InterbankTransactionOperatingSession` - 
    # * `CorrespondenceOperatingSession` - 
    # * `InteractiveHelpOperatingSession` - 
    # * `ACHOperatingSession` - 
    Sessiontypevalues SessionType?;
};

public type Identifier record {
    # tThe actual unique code or number (e.g., passport number, drivers license number).
    string IdentifierValue?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    Involvedparty IdentifierIssuerReference?;
    # Date and time at which the range starts. (ISO20022)
    Datetime IdentifierStartDate?;
    # Date and time at which the range starts. (ISO20022)
    Datetime IdentifierEndDate?;
};

public type Accountcurrency record {
    # >
    # * `BaseCurrency` - Base currency of the account. (ISO20022)
    #
    # * `ReportingCurrency` - Currency used to calculate and report the balance and related entries of an account. (ISO20022)
    #
    # * `SecondaryCurrency` - 
    # * `TransferCurrency` - Currency of the amount to be transferred which may be different from the currency of the debtor's account. (ISO20022)
    # * `SettlementCurrency` - Specifies the currency used for settlement, if different from the account currency. 
    Currencytypevalues AccountCurrencyType?;
    # AccountCurrency
    Currencycode AccountCurrency?;
};

public type Name record {
    # A name is a word or phrase that constitutes the distinctive designation of a person, place, thing or concept. (UN/CEFAT)
    string Name?;
};

public type Account record {
    # A characteristic of account which refers to the LifecycleStatus of account like opened, closed, blocked, etc.
    #
    # Specifies the current state of an account. (ISO20022)
    Accountstatus AccountStatus?;
    # The identification of the target account of a standing order.
    Accountidentification AccountIdentification?;
    # A characteristic of account which refers to LifecycleDate of account (e.g., ClosingDate, OpeningDate, LiveDate, etc.) 
    Accountdatetime AccountDate?;
    # >
    # * `DebitAccount` - 
    # * `CreditAccount` - 
    # * `VostroAcount` - In correspondent banking, an account held by one bank on behalf of another bank (the customer bank); the customer bank regards this account as its nostro account. (ECB)
    # * `NostroAccount` - In correspondent banking, an account held by a customer bank on the books of another bank acting as a service provider. The other bank regards this account as a loro account. (ECB)
    # * `PaymentAccount` - 
    # * `SettlementAccount` - A specific purpose account used to post debit and credit entries as a result of the transaction. (ISO20022)
    #
    # Account which is used for settlement. (ISO20022)
    # * `SavingAccount` - 
    # * `CurrentAccount` - 
    # * `CashAccount` - 
    # * `LoanAccount` - 
    # * `IndividualAccount` - 
    # * `JointAccount` - 
    # * `LiquidationAccount` - 
    # * `ProvisionAccount` - 
    # * `PartnershipAccount` - 
    # * `InvestmentAccount` - 
    Accounttypevalues AccountType?;
    # AccountPurpose
    string AccountPurpose?;
    # The state of the obligations managed on the account, the result of all entries on the account.
    #
    # Numerical representation of the net increases and decreases in an account at a specific point in time. (ISO20022)
    #
    # Banking: Amount available in an account for withdrawal or use.
    # Read more: http://www.businessdictionary.com/definition/balance.html
    #
    # Bookkeeping: Difference between the debit and credit sides of an account.
    # Read more: http://www.businessdictionary.com/definition/balance.html
    Accountbalance AccountBalance?;
    # AccountCurrency
    Accountcurrency AccountCurrency?;
    # A detailed explanation or commentary of account. 
    string AccountDescription?;
    # AccountName
    Name AccountName?;
    # LogType
    string LogType?;
    # LogPeriod
    Datetimeperiod LogPeriod?;
    # Date and time at which the range starts. (ISO20022)
    Datetime LogDate?;
    # LogIdentification
    Identifier LogIdentification?;
};

# A characteristic of instruction which refers to the LifecycleStatus of instruction (e.g., requested, executed, fulfilled, etc.); 
public type Instructionstatus record {
    # >
    # * `Pendingprocessing` - Processing of the instruction is pending.
    # * `Acknowledgedaccepted` - Instruction has been acknowledged and accepted and is validated for further processing.
    # * `Rejected` - Instruction has been rejected.
    # * `Accepted` - Instruction has been accepted and is validated for further processing.
    # * `Completed` - Processing has been completed.
    # * `Notreceived` - No instruction has been received (to be used in a reminder).
    # * `Cancelled` - Instruction has been cancelled.
    # * `Beingcancelled` - Cancel request is being processed.
    # * `Receivedbyissuerorregistrar` - Instruction has been received by Issuer.
    # * `Pending` - Instruction is pending.
    # * `Standinginstruction` - Standing instruction is applied.
    # * `Queued` - Instruction is queued.
    # * `Cancelledbysubcustodian` - Instruction has been cancelled by the agent, for example, due to an event deadline extension.
    # * `Forwarded` - Accepted and sent along the chain.
    Instructionstatustypevalues InstructionStatusType?;
    # InstructionStatus
    Status InstructionStatus?;
};

# The state of the obligations managed on the account, the result of all entries on the account.
#
# Numerical representation of the net increases and decreases in an account at a specific point in time. (ISO20022)
#
# Banking: Amount available in an account for withdrawal or use.
# Read more: http://www.businessdictionary.com/definition/balance.html
#
# Bookkeeping: Difference between the debit and credit sides of an account.
# Read more: http://www.businessdictionary.com/definition/balance.html
public type Accountbalance record {
    # Base amount that would be applied when the service is requested. 
    Amount BalanceAmount?;
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
    Balancetypevalues BalanceType?;
    # Date and time at which the range starts. (ISO20022)
    Datetime BalanceValueDate?;
    # >
    # * `Debit` - Transaction is a debt entry
    # * `Credit` - Transaction is a credit entry
    Debitcreditindicatortvalues BalanceIndicator?;
    # >
    # * `Bilateral` - Balance calculated regarding one member in the system. (ISO20022)
    # * `Multilateral` - Balance calculated regarding all members in the system. (ISO20022)
    Balancecounterpartytypevalues BalanceCounterpartyType?;
    # Date and time at which the range starts. (ISO20022)
    Datetime BalanceCalculationDate?;
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
    Balancesubtypevalues BalanceSubType?;
};

public type Businessservicetypevalues record {
    # Businessservicetypevalues
    string Businessservicetypevalues?;
};

# Reference to the jurisdiction that is assigned to Central Cash Allocation in case of legal dispute.
public type Jurisdiction record {
    # Jurisdiction that will be assigned in case of legal dispute.
    string Jurisdiction?;
};

# The required status/situation before the duty/obligation can be met
public type Condition record {
    # The identifier of Condition
    Identifier ConditionIdentification?;
    # The name of Condition
    Name ConditionName?;
    # The validity period of Condition
    Datetimeperiod ConditionValidityPeriod?;
    # The date when the identifier became valid.
    Datetime ConditionDateAndTime?;
    # >
    # * `Defined` - Condition is authored or configured
    # * `Pending` - Awaiting approval or validation
    # * `Activated` - Live and ready for evaluation
    # * `Evaluated` - Assessed in context of process or event
    # * `Fulfilled` - Condition criteria met
    # * `Violated` - Condition criteria not met
    # * `Expired` - No longer valid due to time/version limits
    # * `Archived` - Retired from use, retained for audit/history
    Conditionstatustypevalues ConditionStatus?;
    # ConditionDescription
    string ConditionDescription?;
    # >
    # * `CommissionTermAndCondition` - Commission terms for workforce/employee commission processing
    # * `LegalTermAndCondition` - Covers the legal considerations of the agreement
    # * `RegulatoryTermAndCondition` - Covers the regulatory considerations of the agreement
    # * `PolicyTermAndCondition` - Covers the corporate policies and requirements considerations of the agreement
    # * `RestrictionTermAndCondition` - Details channel access restrictions for products and services
    # * `PreferenceTermAndCondition` - Customer channel/device usage preferences
    # * `InvestmentTermAndCondition` - Terms making up the agreement that govern the management of the investment portfolio. Note that there may be many different types of terms and clauses making up the overall policy
    # * `MandateTermAndCondition` - Reference to the terms in force for a specific customer for this service provider
    # * `OperationalTermAndCondition` - 
    # * `ProductTermAndCondition` - 
    # * `AgreementTermAndCondition` - 
    # * `RelationshipTermAndCondition` - 
    # * `ConfidentialTermAndCondition` - 
    Termandconditiontypevalues ConditionType?;
    # >
    # * `FeeFeature` - This refers to the functionality in a system or platform that manages, calculates, or displays fees associated with specific transactions or services.
    # * `InterestFeature` - This feature calculates and tracks interest earnings or charges on accounts, loans, or investments over time.
    # * `WithdrawalFeature` - The withdraw feature typically refers to an option or functionality that allows users to retrieve or remove something from a system or platform.
    # * `DepositFeature` - This refers to a functionality that allows users to add funds to an account or system, often by transferring money from another source.
    # * `SweepFeature` - 
    # * `LienFeature` - 
    # * `PaymentFeature` - This refers to the functionality that facilitates or tracks the transfer of funds for a purchase or settlement of dues.
    # * `RepaymentFeature` - This feature facilitates or manages the process of paying back borrowed funds, such as loans, credit card balances, or advances.
    # * `LimitFeature` - This feature sets, monitors, or enforces restrictions on the maximum amount that can be accessed, spent, or transacted within a system.
    # * `OverdraftFeature` - This functionality allows users to withdraw more money than what is available in their account balance, often up to a predefined limit.
    # * `StatementFeature` - The statement feature refers to a functionality in banking, finance, or digital platforms that provides users with a detailed record of their transactions or activities over a specific period.
    # * `CurrencyExchangeFeature` - This feature enables users to convert funds from one currency to another at prevailing exchange rates, often within financial or payment platforms.
    # * `PriceFeature` - This feature involves displaying or managing the price of goods, services, or financial instruments within a platform.
    Featuretypevalues FeatureType?;
    # The identifier of Condition
    Identifier FeatureIdentification?;
    # The name of Condition
    Name FeatureName?;
    # FeatureLifecycleStatus
    Status FeatureLifecycleStatus?;
    # FeatureDescription
    string FeatureDescription?;
};

# The Projection and Allocation specific  Business Service
public type BusinessService record {
    # BusinessServiceType
    Businessservicetypevalues BusinessServiceType?;
    # The name of Condition
    Name ServiceName?;
    # A detailed explanation or commentary of service
    string ServiceDescription?;
    # >
    # * `ITService` - 
    # * `AdministrativeService` - 
    # * `SystemService` - 
    # * `FinancialService` - 
    # * `InformationService` - 
    # * `BusinessService` - 
    Servicetypevalues ServiceType?;
    # The identifier of Condition
    Identifier ServiceIdentification?;
    # ServiceLifecycleStatus
    Status ServiceLifecycleStatus?;
    # A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
    Feature ServiceFeature?;
    # >
    # * `FeeFeature` - This refers to the functionality in a system or platform that manages, calculates, or displays fees associated with specific transactions or services.
    # * `InterestFeature` - This feature calculates and tracks interest earnings or charges on accounts, loans, or investments over time.
    # * `WithdrawalFeature` - The withdraw feature typically refers to an option or functionality that allows users to retrieve or remove something from a system or platform.
    # * `DepositFeature` - This refers to a functionality that allows users to add funds to an account or system, often by transferring money from another source.
    # * `SweepFeature` - 
    # * `LienFeature` - 
    # * `PaymentFeature` - This refers to the functionality that facilitates or tracks the transfer of funds for a purchase or settlement of dues.
    # * `RepaymentFeature` - This feature facilitates or manages the process of paying back borrowed funds, such as loans, credit card balances, or advances.
    # * `LimitFeature` - This feature sets, monitors, or enforces restrictions on the maximum amount that can be accessed, spent, or transacted within a system.
    # * `OverdraftFeature` - This functionality allows users to withdraw more money than what is available in their account balance, often up to a predefined limit.
    # * `StatementFeature` - The statement feature refers to a functionality in banking, finance, or digital platforms that provides users with a detailed record of their transactions or activities over a specific period.
    # * `CurrencyExchangeFeature` - This feature enables users to convert funds from one currency to another at prevailing exchange rates, often within financial or payment platforms.
    # * `PriceFeature` - This feature involves displaying or managing the price of goods, services, or financial instruments within a platform.
    Featuretypevalues FeatureType?;
    # The identifier of Condition
    Identifier FeatureIdentification?;
    # The name of Condition
    Name FeatureName?;
    # FeatureLifecycleStatus
    Status FeatureLifecycleStatus?;
    # FeatureDescription
    string FeatureDescription?;
};

# A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
public type Feature record {
    # >
    # * `FeeFeature` - This refers to the functionality in a system or platform that manages, calculates, or displays fees associated with specific transactions or services.
    # * `InterestFeature` - This feature calculates and tracks interest earnings or charges on accounts, loans, or investments over time.
    # * `WithdrawalFeature` - The withdraw feature typically refers to an option or functionality that allows users to retrieve or remove something from a system or platform.
    # * `DepositFeature` - This refers to a functionality that allows users to add funds to an account or system, often by transferring money from another source.
    # * `SweepFeature` - 
    # * `LienFeature` - 
    # * `PaymentFeature` - This refers to the functionality that facilitates or tracks the transfer of funds for a purchase or settlement of dues.
    # * `RepaymentFeature` - This feature facilitates or manages the process of paying back borrowed funds, such as loans, credit card balances, or advances.
    # * `LimitFeature` - This feature sets, monitors, or enforces restrictions on the maximum amount that can be accessed, spent, or transacted within a system.
    # * `OverdraftFeature` - This functionality allows users to withdraw more money than what is available in their account balance, often up to a predefined limit.
    # * `StatementFeature` - The statement feature refers to a functionality in banking, finance, or digital platforms that provides users with a detailed record of their transactions or activities over a specific period.
    # * `CurrencyExchangeFeature` - This feature enables users to convert funds from one currency to another at prevailing exchange rates, often within financial or payment platforms.
    # * `PriceFeature` - This feature involves displaying or managing the price of goods, services, or financial instruments within a platform.
    Featuretypevalues FeatureType?;
    # The identifier of Condition
    Identifier FeatureIdentification?;
    # The name of Condition
    Name FeatureName?;
    # FeatureLifecycleStatus
    Status FeatureLifecycleStatus?;
    # FeatureDescription
    string FeatureDescription?;
};

# The identification of the target account of a standing order.
public type Accountidentification record {
    # >
    # * `BBAN` - Basic Bank Account Number (BBAN) - identifier used nationally by financial institutions, ie, in individual countries, generally as part of a National Account Numbering Scheme(s), to uniquely identify the account of a customer. (ISO20022)
    #
    # .
    # * `IBAN` - International Bank Account Number (IBAN) - identifier used internationally by financial institutions to uniquely identify the account of a customer. Further specifications of the format and content of the IBAN can be found in the standard ISO 13616 "Banking and related financial services - International Bank Account Number (IBAN)" version 1997-10-01, or later revisions. (ISO20022)
    #
    # An identifier used internationally by financial institutions to uniquely identify the account of a customer at a financial institution, as described in the latest edition of the international standard ISO 13616. "Banking and related financial services - International Bank Account Number (IBAN)". (OBExternalAccountIdentification4Code)
    # * `UPIC` - Universal Payment Identification Code (UPIC) - identifier used by the New York Clearing House to mask confidential data, such as bank accounts and bank routing numbers. UPIC numbers remain with business customers, regardless of banking relationship changes. (ISO20022)
    # * `AccountNumber` - String of characters (mainly numbers) used to identify an account.(ISO20022)
    #
    # * `PAN` - Primary Account Number - identifier scheme used to identify a card account. (OBExternalAccountIdentification4Code)
    # * `Paym` - Paym Scheme to make payments via mobile (OBExternalAccountIdentification4Code)
    # * `Wallet` - A primary and unique account identifier used to identify a wallet.
    # An ASPSP must document on their developer portal, the payment methods that supports this account identifier.(OBExternalAccountIdentification4Code)
    # * `SortCodeAndAccountNumber` - Sort Code and Account Number - identifier scheme used in the UK by financial institutions to identify the account of a customer. The identifier is the concatenation of the 6 digit UK sort code and 8 digit account number. (UK Open Banking)
    # * `AIIN` - IssuerIdentificationNumber
    # * `CUID` - CHIPSUniversalIdentifier
    Accountidentificationtypevalues AccountIdentificationType?;
    # AccountIdentification
    Identifier AccountIdentification?;
};

public type Plan record {
    # PlanGoal
    Goal PlanGoal?;
    # An arrangement which is specifying an estimate of costs, revenues, and resources over a specified period, reflecting a reading of future financial conditions and goals. (adapted from Business Dictionary)
    Budgetarrangement PlanBudget?;
    # An action that is arranged in a plan for doing or achieving something 
    Plannedaction PlannedAction?;
    # >
    # * `AdministrativePlan` - 
    # * `ManagementPlan` - 
    # * `StratgyPlan` - 
    # * `FinancialPlan` - 
    # * `DevelopmentPlan` - 
    Plantypevalues PlanType?;
    # PlanValidityPeriod
    Datetimeperiod PlanValidityPeriod?;
    # PlanDescription
    string PlanDescription?;
    # Key dates associated with the assignment request (e.g. order date, confirmation date, delivery date)
    Date AgreementSignedDate?;
    # >
    # * `CustomerAgreement` - 
    # * `SupplierAgreement` - 
    # * `BrokerAgreement` - 
    # * `SalesAgreement` - 
    # * `PurchaseAgreement` - 
    # * `MaintenanceAgreement` - 
    # * `ProductAgreement` - 
    # * `ResourceAgreement` - 
    # * `PartnerAgreement` - 
    # * `MasterAgreement` - 
    # * `BilateralAgreement` - 
    # * `RepurchaseAgreement` - 
    Agreementtypevalues AgreementType?;
    # AgreementValidityPeriod
    Datetimeperiod AgreementValidityPeriod?;
    # AgreementVersion
    string AgreementVersion?;
    # A characteristic of agreement which refers to the LifecycleStatus of agreement (e.g., potential, offered, confirmed, completed, signed, terminated).
    Agreementstatus AgreementStatus?;
    # AgreementSubjectMatter
    string AgreementSubjectMatter?;
    # AgreementIdentification
    Identifier AgreementIdentification?;
    # Date and time at which the range starts. (ISO20022)
    Datetime AgreementDate?;
    # AgreementDescription
    string AgreementDescription?;
};

# Reference to the regulation which is defined for Central Cash Allocation
public type Regulation record {
    # RegulationDefinition
    string RegulationDefinition?;
    # RuleSetDefinition
    string RuleSetDefinition?;
    # RuleSetInterpretation
    string RuleSetInterpretation?;
    # >
    # * `Policy` - Rule that governs business execution.
    #
    # The set of basic principles and associated guidelines, formulated and enforced by the governing body of an organization, to direct and limit its actions in pursuit of long-term goals. (Business Dictionary)
    #
    # * `Regulation` - A rule used to carry out a law (FIBO)
    #
    # Business Dictionary: a rule (with or without the coercive power of law) employed in controlling, directing, or managing an activity, organization, or system. 
    #
    # The set of rules and legislation governing certain actions. 
    # https://financial-dictionary.thefreedictionary.com/Regulatory
    # * `Law` - A binding rule that the courts will enforce.
    # A system of rules and guidelines which are enforced through social institutions to govern behavior. (FIBO)
    #
    # * `Guideline` - A recommended practice (adapted from Business Dictionary)
    # A general rule, principle, or piece of advice.
    # * `Criterion` - A principle or standard by which something may be judged or decided.
    #
    # Read more: http://www.businessdictionary.com/definition/criterion.html
    # * `Standard` - A rule considered by an authority or by general consent as a basis of comparison
    Rulesettypevalues RuleSetType?;
    # The name of Condition
    Name RuleSetName?;
    # The identifier of Condition
    Identifier RuleSetIdentification?;
    # RuleSetLifecycleStatus
    Status RuleSetLifecycleStatus?;
};

# The channel policies and guidelines for service users
public type RuleSet record {
    # RuleSetDefinition
    string RuleSetDefinition?;
    # RuleSetInterpretation
    string RuleSetInterpretation?;
    # >
    # * `Policy` - Rule that governs business execution.
    #
    # The set of basic principles and associated guidelines, formulated and enforced by the governing body of an organization, to direct and limit its actions in pursuit of long-term goals. (Business Dictionary)
    #
    # * `Regulation` - A rule used to carry out a law (FIBO)
    #
    # Business Dictionary: a rule (with or without the coercive power of law) employed in controlling, directing, or managing an activity, organization, or system. 
    #
    # The set of rules and legislation governing certain actions. 
    # https://financial-dictionary.thefreedictionary.com/Regulatory
    # * `Law` - A binding rule that the courts will enforce.
    # A system of rules and guidelines which are enforced through social institutions to govern behavior. (FIBO)
    #
    # * `Guideline` - A recommended practice (adapted from Business Dictionary)
    # A general rule, principle, or piece of advice.
    # * `Criterion` - A principle or standard by which something may be judged or decided.
    #
    # Read more: http://www.businessdictionary.com/definition/criterion.html
    # * `Standard` - A rule considered by an authority or by general consent as a basis of comparison
    Rulesettypevalues RuleSetType?;
    # RuleSetName
    Name RuleSetName?;
    # RuleSetIdentification
    Identifier RuleSetIdentification?;
    # RuleSetLifecycleStatus
    Status RuleSetLifecycleStatus?;
};

# A record of any production issues arising during the session (see E-Branch Operations for detailed content)
public type ProductionIssue record {
    # The Type of production problem (error)
    string ProductionIssueType?;
    # Description of the production problem
    string ProductionIssueDescription?;
    # Evaluation of the production problem cause and impact assessment
    string ProductionIssueDiagnosis?;
    # Description of corrective action proposed and taken
    string ProductionIssueResolutionTask?;
    # The state of resolution of a reported production problem
    string ProductionIssueStatus?;
};

public type Instructiondatetime record {
    # The date when the identifier became valid.
    Datetime InstructionDate?;
    # >
    # * `DueDate` - 
    # * `ExecutionDate` - 
    # * `FulfillmentDate` - 
    Instructiondatetimetypevalues InstructionDateType?;
};

# Request to allocate CentralCash
public type Instruction record {
    # InstructionDate
    Instructiondatetime InstructionDate?;
    # A characteristic of instruction which refers to the LifecycleStatus of instruction (e.g., requested, executed, fulfilled, etc.); 
    Instructionstatus InstructionStatus?;
    # An identifier that allows to uniquely refer to an instance of an Instruction.
    Instructionidentification InstructionIdentification?;
    # >
    # * `PaymentInstruction` - 
    # * `DeliveryOrder` - 
    # * `InformationRequest` - 
    # * `ExchangeInstruction` - 
    # * `AllocationInstruction` - 
    # * `MaintenanceInstruction` - 
    Instructiontypevalues InstructionType?;
    # InstructionResult
    string InstructionResult?;
    # InstructionDescription
    string InstructionDescription?;
    # InstructionLog
    Log InstructionLog?;
    # InstructionPurpose
    string InstructionPurpose?;
};

public type TroubleshootingOk record {|
    *http:Ok;
    # body
    Troubleshooting body;
|};

public type Model record {
    # The type or category of model  
    string ModelType?;
    # A description of the model that clarifies the intended analysis/insights provided
    string ModelPurpose?;
    # ModelVersion
    string ModelVersion?;
    # ModelName
    Name ModelName?;
    # ModelDateAndTime
    Datetime ModelDateAndTime?;
    # ModelStatus
    Status ModelStatus?;
};

# Reference to a type of testing activity
public type Task record {
    # Task
    string Task?;
};

public type Document record {
    # An identifier that allows to uniquely refer to an instance of a Document.
    Identifier DocumentIdentification?;
    # DocumentVersion
    string DocumentVersion?;
    # >
    # * `Meteredserviceinvoice` - Document is an invoice claiming payment for the supply of metered services, for example gas or electricity supplied to a fixed meter.
    # * `Creditnoterelatedtofinancialadjustment` - Document is a credit note for the final amount settled for a commercial transaction.
    # * `Debitnoterelatedtofinancialadjustment` - Document is a debit note for the final amount settled for a commercial transaction.
    # * `Commercialinvoice` - Document is an invoice.
    # * `Creditnote` - Document is a credit note.
    # * `Debitnote` - Document is a debit note.
    # * `Hireinvoice` - Document is an invoice for the hiring of human resources or renting goods or equipment.
    # * `Selfbilledinvoice` - Document is an invoice issued by the debtor.
    # * `Remittanceadvicemessage` - Document is a remittance advice sent separately from the current transaction.
    # * `Relatedpaymentinstruction` - Document is a linked payment instruction to which the current payment instruction is related, for example, in a cover scenario.
    # * `Commercialcontract` - Document is an agreement between the parties, stipulating the terms and conditions of the delivery of goods or services.
    # * `Foreignexchangedealreference` - Document is a pre-agreed or pre-arranged foreign exchange transaction to which the payment transaction refers.
    # * `Statementofaccount` - Document is a statement of the transactions posted to the debtor's account at the supplier.
    # * `Dispatchadvice` - Document is a dispatch advice.
    # * `Purchaseorder` - Document is a purchase order.
    # * `Structuredcommunicationreference` - Document is a structured communication reference provided by the creditor to identify the referred transaction.
    # * `Billoflading` - Document is a shipping notice.
    # * `Voucher` - Document is an electronic payment document.
    # * `Accountreceivableopenitem` - Document is a payment that applies to a specific source document.
    # * `Tradeservicesutilitytransaction` - Document is a transaction identifier as assigned by the Trade Services Utility.
    # * `Cashierreceipt` - When the Sale system print the Cashier copy of the Payment receipt.
    # * `Customerreceipt` - When the Sale System requires   the POI system to print the Customer receipt.
    # * `Journal` - When the POI or the Sale System wants to store a message on the journal printer or electronic journal of the Sale Terminal (it is sometimes a Sale Logging/Journal Printer).
    # * `Salereceipt` - When the Sale System requires the POI system to print the Sale receipt.
    Financialdocumenttypevalues DocumentType?;
    # DocumentStatus
    Status DocumentStatus?;
    # DocumentDateTime
    Datetime DocumentDateTime?;
    # DocumentName
    Name DocumentName?;
    # >
    # * `CreationDate` - 
    # * `CapturingDate` - 
    # * `VersionDate` - 
    # * `ValueDate` - 
    # * `IssueDate` - 
    Documentdatetimetypevalues DocumentDateTimeType?;
    # Specifies the function of the document. (ISO20022)
    string DocumentPurpose?;
    # DocumentFormat
    string DocumentFormat?;
    # DocumentSubject
    string DocumentSubject?;
    # DocumentDescription
    string DocumentDescription?;
    # Period of time during which the status is valid.
    Datetimeperiod DocumentValidityPeriod?;
};

# The main design elements/views making up the overall specification
#
# Examples: Business Requirements
public type FunctionalRequirements record {
    # Reference to a type of testing activity
    Task FraudModelDesignTaskReference?;
    # Reference to a type of testing activity
    Task FraudModelDesignTaskRecord?;
    # Reference to external service information provider used to obtain example production data for design
    Service CustomerMarketDataServiceReference?;
    # Record of example production data file
    string CustomerMarketDataRecord?;
    # User provided and solicited feedback, suggestions for model refinement
    string FraudModelFeedbackRecord?;
    # The model functional requirements specification (with versioning as appropriate)
    string FraudModelRequirementsSpecification?;
};

public type Requirement record {
    # RequirementType
    string RequirementType?;
};

# Reference to external service information provider used to obtain example production data for design
public type Service record {
    # ServiceName
    Name ServiceName?;
    # A detailed explanation or commentary of service
    string ServiceDescription?;
    # >
    # * `ITService` - 
    # * `AdministrativeService` - 
    # * `SystemService` - 
    # * `FinancialService` - 
    # * `InformationService` - 
    # * `BusinessService` - 
    Servicetypevalues ServiceType?;
    # An identifier that allows to uniquely refer to an instance of a Document.
    Identifier ServiceIdentification?;
    # ServiceLifecycleStatus
    Status ServiceLifecycleStatus?;
    # A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
    Feature ServiceFeature?;
    # >
    # * `FeeFeature` - This refers to the functionality in a system or platform that manages, calculates, or displays fees associated with specific transactions or services.
    # * `InterestFeature` - This feature calculates and tracks interest earnings or charges on accounts, loans, or investments over time.
    # * `WithdrawalFeature` - The withdraw feature typically refers to an option or functionality that allows users to retrieve or remove something from a system or platform.
    # * `DepositFeature` - This refers to a functionality that allows users to add funds to an account or system, often by transferring money from another source.
    # * `SweepFeature` - 
    # * `LienFeature` - 
    # * `PaymentFeature` - This refers to the functionality that facilitates or tracks the transfer of funds for a purchase or settlement of dues.
    # * `RepaymentFeature` - This feature facilitates or manages the process of paying back borrowed funds, such as loans, credit card balances, or advances.
    # * `LimitFeature` - This feature sets, monitors, or enforces restrictions on the maximum amount that can be accessed, spent, or transacted within a system.
    # * `OverdraftFeature` - This functionality allows users to withdraw more money than what is available in their account balance, often up to a predefined limit.
    # * `StatementFeature` - The statement feature refers to a functionality in banking, finance, or digital platforms that provides users with a detailed record of their transactions or activities over a specific period.
    # * `CurrencyExchangeFeature` - This feature enables users to convert funds from one currency to another at prevailing exchange rates, often within financial or payment platforms.
    # * `PriceFeature` - This feature involves displaying or managing the price of goods, services, or financial instruments within a platform.
    Featuretypevalues FeatureType?;
    # An identifier that allows to uniquely refer to an instance of a Document.
    Identifier FeatureIdentification?;
    # FeatureName
    Name FeatureName?;
    # FeatureLifecycleStatus
    Status FeatureLifecycleStatus?;
    # FeatureDescription
    string FeatureDescription?;
};

# The main design elements/views making up the overall specification
#
# Examples: Business Requirements
public type Production record {
    # FraudModelOperationalRequirements
    Requirement FraudModelOperationalRequirements?;
    # Defines rules and suitability for model usage
    string FraudModelAllowedUsage?;
    # Provides guidance on the use of the model
    RuleSet FraudModelUsageGuidelines?;
};

# Reference to a compliance task performed against the specification
public type Test record {
    # TestResult
    string TestResult?;
    # TestGuidance
    string TestGuidance?;
    # >
    # * `ProductEligibilityTest` - 
    # * `NextBestProductTest` - 
    # * `IssuedDeviceTest` - 
    # * `CardHolderAuthenticationTest` - 
    # * `CardFundsAvailableTest` - 
    # * `CardTransactionFraudTest` - 
    # * `CardStand-InAuthorizationTest` - 
    # * `ExternalAccessRequestTest` - 
    # * `SuitabilityTest` - 
    # * `LegalComplianceTest` - 
    # * `RegulatoryComplianceTest` - 
    # * `SystemFunctionalTest` - 
    # * `SystemProductionTest` - 
    # * `SystemBusinessRiskTest` - 
    # * `SystemOperationsTest` - 
    # * `CreditPolicyComplianceTest` - 
    # * `RuleSetAndDecisionTreeTest` - 
    # * `ModelBasedTests` - 
    # * `AssetAndLiabilityValuationTest` - 
    # * `LiquidityAndCashFlowTest` - 
    # * `RiskTest` - 
    # * `SensitivityTest` - 
    Testtypevalues TestType?;
    # TestDescription
    string TestDescription?;
};

# The main design elements/views making up the overall specification
#
# Examples: Business Requirements
public type Testing record {
    # Reference to a type of test
    ModelTest FraudModelTestReference?;
    # Defines the type of test (e.g. unit, integration, load, user acceptance etc.)
    string FraudModelTestType?;
    # Reference to the testing environment used to apply the test
    string FraudModelTestHarnessReference?;
    # Reference to a type of test
    ModelTest FraudModelTestResult?;
    # Reference to a type of testing activity
    Task FraudModelTestingTaskReference?;
    # Reference to a type of testing activity
    Task FraudModelTestingTaskRecord?;
    # Reference to a type of testing activity
    Task FraudModelComplianceTaskReference?;
    # Reference to a type of testing activity
    Task FraudModelComplianceTaskRecord?;
    # Reference to a compliance task performed against the specification
    Test FraudModelComplianceTestReference?;
    # Record of the compliance test applied to the specification
    string FraudModelComplianceTestType?;
};

# Reference to a type of test
public type ModelTest record {
    # Defines the type of test (e.g. unit, integration, load, user acceptance etc.)
    string ModelTestType?;
    # Reference to the testing environment used to apply the test.
    string ModelTestHarness?;
    # ModelTestActivity
    string ModelTestActivity?;
    # ModelTestResult
    string ModelTestResult?;
    # >
    # * `Valuation` - 
    # * `Matching` - 
    # * `Authorization` - An evaluation whether a party or system is allowed to do something.
    #
    # The consent given by a participant (or a third party acting on behalf of that participant) in order to transfer funds or securities. (ECB)
    #
    # Authorization is a mechanism by which a computer system determines whether to allow or deny specific action to a user. Authorization is often controlled by rather complex rules and algorithms, usually specified as part of an access control model. Authorization often follows (and required) authentication, however, authentication and authorization are two separate mechanisms. In rare cases, "authorization" is understood as a process of allowing access, granting permissions or giving approval. Such as "authorization" of a request to join a group. (ISO/IEC 24760-1:2019 - IT Security and Privacy)
    # * `Authentication` - An evaluation whether a party or system is what it claims to be.
    #
    # A security mechanism for verifying: 1) the identity of an individual or other entity (including verification by means of a computer or computer application); and 2) the level of authority of that person or entity (i.e. the ability of that person or entity to perform specific tasks or activities). (ECB)
    #
    # Authentication is a mechanism by which a computer system checks that the user is really the one she or he claims to be. Authentication can be implemented by a broad variety of mechanisms broadly divided into three categories: something you know, something you have, something you are. Traditionally, authentication is done by the means of by username and password. Authentication is often followed by authorization, however, authentication and authorization are two separate mechanisms. (ISO/IEC 24760-1:2019 - IT Security and Privacy)
    # * `QualityAssurance` - 
    # * `Audit` - 
    # * `ComplianceCheck` - 
    # * `FundingCheck` - 
    # * `SuitabilityCheck` - 
    # * `PerformanceCheck` - 
    # * `ImpactAssessment` - 
    # * `RiskAssessment` - 
    # * `Rating` - 
    # * `UnderwritingAssessment` - 
    # * `Qualification` - 
    # * `Verification` - A process establishing that a particular information is correct, while the meaning of "information" and "correct" varies from context to context. When dealing with identity information, this usually means formal verification of identity attributes, checking the schema, identifier uniqueness and referential integrity. However, verification may mean deeper verification, such as checking that the information is true and up-to-date.  (ISO/IEC 24760-1:2019 - IT Security and Privacy)
    #
    # * `KYCAssessment` - An assessment conducted by businesses and financial institutions to verify and confirm the identity of their customers or clients. The primary purpose of a KYC check is to prevent illegal activities, such as money laundering, terrorist financing, and fraud, by ensuring that customers are who they claim to be.
    # * `PEPAssessment` - A PEP check, or "Politically Exposed Person" check, is an assessment conducted by used by businesses, financial institutions, and government agencies to identify individuals who hold prominent public positions or have significant political influence. The purpose of a PEP check is to assess and manage the potential risks associated with doing business with these individuals, as they may be more susceptible to corruption, money laundering, or other illicit activities.
    # * `AMLAssessment` - An AML (Anti-Money Laundering) check is an assessment conducted by businesses, financial institutions, and other organizations to prevent and detect money laundering and the financing of criminal activities. The main purpose of an AML check is to ensure that financial transactions and business relationships are not being used to disguise the illegal origins of funds.
    # * `EligibilityCheck` - Determines whether a person or case meets the criteria or preconditions to qualify for a benefit, service, or action.
    # * `ExternalAgencyCheck` - 
    # * `EntitlementCheck` - Determines what benefit, amount, or service the person is actually entitled to receive once eligibility is confirmed.
    Assessmenttypevalues AssessmentType?;
    # AssessmentMethod
    string AssessmentMethod?;
    # AssessmentSchedule
    Schedule AssessmentSchedule?;
    # AssessmentDescription
    string AssessmentDescription?;
    # AssessmentModel
    Model AssessmentModel?;
    # AssessmentDateTime
    Datetime AssessmentDateTime?;
    # AssessmentResult
    string AssessmentResult?;
    # Document that provides background or corroborating information regarding an assessment(s).
    Document AssessmentSupportingDocument?;
    # Document that provides background or corroborating information regarding an assessment(s).
    Document AssessmentRepresentingDocument?;
    # Change that the assessment reveals is needed.
    string AssessmentRequiredAdjustment?;
    # AssessmentRequirement
    Requirement AssessmentRequirement?;
    # Date when the assessment expires. (ISO20022)
    Date AssessmentExpiryDate?;
    # AssessmentStatus
    Status AssessmentStatus?;
    # An identifier that allows to uniquely refer to an instance of a Document.
    Identifier AssessmentIdentification?;
};

# Tracking deployment and usage frequency
public type ModelUsage record {
    # The use of a model over a specified time period.
    string ModelUsage?;
};

# Outcome/result of the legal assessment, this can include remedial actions
public type Assessment record {
    # >
    # * `Valuation` - 
    # * `Matching` - 
    # * `Authorization` - An evaluation whether a party or system is allowed to do something.
    #
    # The consent given by a participant (or a third party acting on behalf of that participant) in order to transfer funds or securities. (ECB)
    #
    # Authorization is a mechanism by which a computer system determines whether to allow or deny specific action to a user. Authorization is often controlled by rather complex rules and algorithms, usually specified as part of an access control model. Authorization often follows (and required) authentication, however, authentication and authorization are two separate mechanisms. In rare cases, "authorization" is understood as a process of allowing access, granting permissions or giving approval. Such as "authorization" of a request to join a group. (ISO/IEC 24760-1:2019 - IT Security and Privacy)
    # * `Authentication` - An evaluation whether a party or system is what it claims to be.
    #
    # A security mechanism for verifying: 1) the identity of an individual or other entity (including verification by means of a computer or computer application); and 2) the level of authority of that person or entity (i.e. the ability of that person or entity to perform specific tasks or activities). (ECB)
    #
    # Authentication is a mechanism by which a computer system checks that the user is really the one she or he claims to be. Authentication can be implemented by a broad variety of mechanisms broadly divided into three categories: something you know, something you have, something you are. Traditionally, authentication is done by the means of by username and password. Authentication is often followed by authorization, however, authentication and authorization are two separate mechanisms. (ISO/IEC 24760-1:2019 - IT Security and Privacy)
    # * `QualityAssurance` - 
    # * `Audit` - 
    # * `ComplianceCheck` - 
    # * `FundingCheck` - 
    # * `SuitabilityCheck` - 
    # * `PerformanceCheck` - 
    # * `ImpactAssessment` - 
    # * `RiskAssessment` - 
    # * `Rating` - 
    # * `UnderwritingAssessment` - 
    # * `Qualification` - 
    # * `Verification` - A process establishing that a particular information is correct, while the meaning of "information" and "correct" varies from context to context. When dealing with identity information, this usually means formal verification of identity attributes, checking the schema, identifier uniqueness and referential integrity. However, verification may mean deeper verification, such as checking that the information is true and up-to-date.  (ISO/IEC 24760-1:2019 - IT Security and Privacy)
    #
    # * `KYCAssessment` - An assessment conducted by businesses and financial institutions to verify and confirm the identity of their customers or clients. The primary purpose of a KYC check is to prevent illegal activities, such as money laundering, terrorist financing, and fraud, by ensuring that customers are who they claim to be.
    # * `PEPAssessment` - A PEP check, or "Politically Exposed Person" check, is an assessment conducted by used by businesses, financial institutions, and government agencies to identify individuals who hold prominent public positions or have significant political influence. The purpose of a PEP check is to assess and manage the potential risks associated with doing business with these individuals, as they may be more susceptible to corruption, money laundering, or other illicit activities.
    # * `AMLAssessment` - An AML (Anti-Money Laundering) check is an assessment conducted by businesses, financial institutions, and other organizations to prevent and detect money laundering and the financing of criminal activities. The main purpose of an AML check is to ensure that financial transactions and business relationships are not being used to disguise the illegal origins of funds.
    # * `EligibilityCheck` - Determines whether a person or case meets the criteria or preconditions to qualify for a benefit, service, or action.
    # * `ExternalAgencyCheck` - 
    # * `EntitlementCheck` - Determines what benefit, amount, or service the person is actually entitled to receive once eligibility is confirmed.
    Assessmenttypevalues AssessmentType?;
    # AssessmentMethod
    string AssessmentMethod?;
    # A schedule which is specified the first payment, last payment, next payment, etc. for a standing orde.
    Schedule AssessmentSchedule?;
    # AssessmentDescription
    string AssessmentDescription?;
    # AssessmentModel
    Model AssessmentModel?;
    # The date when the identifier became valid.
    Datetime AssessmentDateTime?;
    # AssessmentResult
    string AssessmentResult?;
    # Reference to any documentation classified/archived as appropriate
    Document AssessmentSupportingDocument?;
    # Reference to any documentation classified/archived as appropriate
    Document AssessmentRepresentingDocument?;
    # Change that the assessment reveals is needed.
    string AssessmentRequiredAdjustment?;
    # Description of the measurements and reporting required to demonstrate legal compliance
    Requirement AssessmentRequirement?;
    # Date on which the agreement was signed by all parties. (ISO20022)
    Date AssessmentExpiryDate?;
    # AssessmentStatus
    Status AssessmentStatus?;
    # AssessmentIdentification
    Identifier AssessmentIdentification?;
};

# The message content in any suitable format
public type Message record {
    # >
    # * `FinancialMessage` - 
    # * `NonFinancialMessage` - 
    # * `InboundMessage` - 
    # * `OutboundMessage` - 
    Messagetypevalues MessageType?;
    # MessageContent
    string MessageContent?;
    # MessageDeliveryStatus
    Status MessageDeliveryStatus?;
};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type Inbound record {
    # >
    # * `FinancialMessage` - 
    # * `NonFinancialMessage` - 
    # * `InboundMessage` - 
    # * `OutboundMessage` - 
    Messagetypevalues FinancialGatewayInboundMessageType?;
    # The message content in any suitable format
    Message FinancialGatewayInboundMessageRecord?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    Involvedparty FinancialGatewayInboundMessageReceiver?;
    # FinancialGatewayInboundMessageStatus
    Status FinancialGatewayInboundMessageStatus?;
};

public type OutboundOk record {|
    *http:Ok;
    # body
    Outbound body;
|};

public type InboundOk record {|
    *http:Ok;
    # body
    Inbound body;
|};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type Outbound record {
    # >
    # * `FinancialMessage` - 
    # * `NonFinancialMessage` - 
    # * `InboundMessage` - 
    # * `OutboundMessage` - 
    Messagetypevalues FinancialGatewayOutboundMessageType?;
    # The message content in any suitable format
    Message FinancialGatewayOutboundMessageRecord?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    Involvedparty FinancialGatewayOutboundMessageSender?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    Involvedparty FinancialGatewayOutboundMessageReceiver?;
    # FinancialGatewayOutboundMessageStatus
    Status FinancialGatewayOutboundMessageStatus?;
};

public type Deviceidentification record {
    # DeviceIdentification
    Identifier DeviceIdentification?;
    # >
    # * `IMEI` - International Mobile Equipment Identity.
    # * `Serialnumber` - Device serial number.
    # * `Secureelementidentification` - Secure element ID.
    # * `Othernational` - Other nationally assigned code.
    # * `Otherprivate` - Other privately assigned code.
    Deviceidentificationtypevalues DeviceIdentificationType?;
};

public type Organisationidentification record {
    # >
    # * `LEI` - Legal Entity Identifier is a code allocated to a party as described in ISO 17442 "Financial Services - Legal Entity Identifier (LEI)".
    # * `ELF` - Entity Legal Forms is a code allocated to a party as described in ISO 20275 "Financial services  Entity legal forms (ELF)". 
    # * `MIC` - Market Identifier Code. Identification of a financial market, as stipulated in the norm ISO 10383 "Codes for exchanges and market identifications".
    # * `BICFI` - Code allocated to a financial institution by the ISO 9362 Registration Authority as described in ISO 9362 "Banking - Banking telecommunication messages - Business identifier code (BIC)".
    # * `Bankpartyidentification` - Unique and unambiguous assignment made by a specific bank or similar financial institution to identify a relationship as defined between the bank and its client.
    # * `Centralbankidentificationnumber` - A unique identification number assigned by a central bank to identify an organisation.
    # * `Clearingidentificationnumber` - A unique identification number assigned by a clearing house to identify an organisation
    # * `Certificateofincorporationnumber` - A unique identification number assigned by a designated authority to a certificate of incorporation and used to identify an organisation.
    # * `Countryidentificationcode` - Country authority given organisation identification (e.g., corporate registration number)
    # * `Customernumber` - Number assigned by an issuer to identify a customer.
    # Number assigned by a party to identify a creditor or debtor relationship.
    # * `Datauniversalnumberingsystem` - A unique identification number provided by Dun & Bradstreet to identify an organisation.
    # * `Employeridentificationnumber` - Number assigned by a registration authority to an employer.
    # * `Gs1glnidentifier` - Global Location Number. A non-significant reference number used to identify legal entities, functional entities, or physical entities according to GS1 numbering scheme rules.The number is used to retrieve detailed information that is linked to it.
    # * `SIREN` - The SIREN number is a 9 digit code assigned by INSEE, the French National Institute for Statistics and Economic Studies, to identify an organisation in France.
    # * `SIRET` - The SIRET number is a 14 digit code assigned by INSEE, the French National Institute for Statistics and Economic Studies, to identify an organisation unit in France. It consists of the SIREN number, followed by a five digit classification number, to identify the local geographical unit of that entity
    # * `Taxidentificationnumber` - Number assigned by a tax authority to identify an organisation.
    # * `EANGLN` - Global Location Number. A non-significant reference number used to identify legal entities, functional entities, or physical entities according to the European Association for Numbering (EAN) numbering scheme rules. The number is used to retrieve detailed information that is linked to it. (iso20022)
    Organisationidentificationtypevalues OrganisationIdentificationType?;
    # OrganisationIdentification
    Identifier OrganisationIdentification?;
};

public type Organisationname record {
    # Name
    Name Name?;
    # >
    # * `ShortName` - 
    # * `TradingName` - 
    # * `LegalName` - 
    Organisationnametypevalues NameType?;
};

public type Organisationdatetime record {
    # The date when the identifier became valid.
    Datetime OrganisatioDate?;
    # >
    # * `RegistrationDate` - Date and time at which a given organisation was officially registered. (ISO20022)
    # * `EstablishmentDate` - Date when the organisation was established. ISO20022
    # * `EntityExpirationDate` - The date the Legal Entity ceased operation or was merged. ISO20022
    Organisationdatetimetypevalues OrganisatioDateType?;
};

# Reference to the source of outbound connection
public type BusinessUnit record {
    # BusinessFunction
    string BusinessFunction?;
    # Goal
    string Goal?;
    # Description of the structure of a company. ISO20022
    string OrganisationStructureHierarchy?;
    # OrganisationIdentification
    Organisationidentification OrganisationIdentification?;
    # Sector of business of the organisation, for example, pharmaceutical. (ISO20022)
    string OrganisationSector?;
    # LegalEntityIndicator
    string LegalEntityIndicator?;
    # OrganisationDate
    Organisationdatetime OrganisationDate?;
    # >
    # * `LegalEntity` - 
    # * `Authority` - 
    # * `OrganisationUnit` - 
    # * `FinancialInstitution` - 
    # * `Charity` - 
    # * `GovernmentBody` - 
    Organisationtypevalues OrganisationType?;
    # OrganisationName
    Organisationname OrganisationName?;
    # >
    # * `Corporation` - Legal structure is a corporation.
    # * `Individual` - Legal structure is an individual.
    # * `Supranational` - Legal structure is a supranational.
    # * `Sovereign` - Legal structure is a sovereign.
    # * `Municipal` - Legal structure is a municipal.
    # * `Province` - Legal structure is a province.
    # * `State` - Legal structure is a state.
    # * `County` - Legal structure is a county.
    # * `Partnership` - Legal structure is a partnership.
    # * `Financialinstitution` - Legal structure is a financial institution.
    # * `National` - Legal structure is a state.
    Organisationlegalstructuretypevalues OrganisationLegalStructure?;
};

# The outbound connection will be part of a customer contact to ensure all logging is performed
public type CustomerContact record {
    # CustomerContactType
    string CustomerContactType?;
    # The date when the identifier became valid.
    Datetime CustomerContactDateAndTime?;
    # CustomerContactLocation
    Location CustomerContactLocation?;
    # The schedule of past and planned customer contacts
    Schedule CustomerContactSchedule?;
    # The interpreted result of the contact (e.g. completed, customer terminated, timed-out)
    string CustomerContactResult?;
    # The reason and or purpose for the contact (e.g. review, issue, product sales, advice, customer enquiry)
    string CustomerContactPurpose?;
    # Reference to the device being used for access (captured for security and identification)
    Device CustomerContactDevice?;
    # Indicates whether this is an inbound or outbound contact (inbound is customer initiated, outbound is servicing resource initiated).
    string CustomerContactIndicator?;
    # CustomerContactContent
    string CustomerContactContent?;
    # CustomerContactIdentification
    Identifier CustomerContactIdentification?;
};

# Reference to the device being used for access (captured for security and identification)
public type Device record {
    # DeviceIdentification
    Deviceidentification DeviceIdentification?;
    # >
    # * `Securecardreader` - Secure card reader attached to the customer device
    # * `Nonsecurecardreader` - Non-secure card reader attached to the customer device.
    # * `Mobile` - Mobile phone
    # * `Tablet` - Tablet
    # * `Personalcomputer` - Personal computer
    # * `Othernational` - Other device defined at national level
    # * `Otherprivate` - Other device defined in a private way.
    # * `Wearable` - Wearable device.
    # * `Vehicle` - Vehicle.
    # * `Embedded` - Embedded in a device.
    # * `Keyfob` - Key Fob
    # * `Jewellery` - Jewellery
    # * `Sticker` - Sticker
    # * `Gamingdevice` - Gaming Device
    # * `Watch` - Watch
    # * `Unknown` - Device type unknown
    # * `BiometricDevice` - A biometric device is a security identification and authentication device. Such devices use automated methods of verifying or recognising the identity of a living person based on a physiological or behavioral characteristic.
    # https://en.wikipedia.org/wiki/Biometric_device
    #
    Devicetypevalues DeviceType?;
    # Property of a device relevant for its use.
    #
    # A device has the characteristics of the device type it belongs to,possibly specified
    # e.g. . a device of the type "cheque book" will have cheques. The device specifies how many and what the number range is.
    # e.g. an electronic banking app consists of software modules, the device specifies what version 
    string DeviceProperty?;
    # An element of the device that can be used independently and is individually identified
    #
    # e.g. a cheque in a chequebook
    string DeviceElement?;
    # The life cycle stage of a device
    #
    # e.g. active, defect
    Status DeviceStatus?;
    # DeviceVersion
    string DeviceVersion?;
    # The date when the identifier became valid.
    Datetime DeviceDateTime?;
    # DeviceDescription
    string DeviceDescription?;
    # DeviceName
    Name DeviceName?;
    # Preferred language set on the device
    string DeviceLanguage?;
    # Phone number associated with the device.
    string DevicePhoneNumber?;
    # Reference to Geographical Location of the device.
    string DeviceLocationReference?;
    # Manufacturer of the device.
    string DeviceManufacturer?;
    # Reference to Country of the location.
    string DeviceCountryReference?;
    # Reference to the address associated with the device like Internet Protocol address, email Address
    string DeviceAddressReference?;
    # >
    # * `Android` - Android operating system.
    # * `Ios` - iOS operating system.
    # * `Windows` - Windows operating system.
    # * `Blackberry` - Blackberry operating system.
    # * `Tizen` - Tizen operating system.
    # * `Othernational` - Other nationally defined code.
    # * `Otherprivate` - Other privately defined code.
    Deviceoperatingsystemtypevalues DeviceOperatingSystem?;
};

# Reference to the product feature applied in this arrangement 
public type Productfeaturetype record {
    # >
    # * `Bankingservice` - A classification that distinguishes between instances of product features according to the core banking services, functionality and/or objectives of banking.
    #
    # e.g. deposit services, exchange services, etc.
    #
    # The primary reason for the contract with the client are the banking services. These services can be classified as follows:
    # 1. Selling services
    # 2. Financial Instruments Exchange
    # 3. Financial Stock Management
    # 4. Financial Transfers
    # 5. Financial Risk Transfer
    # 6. Business Operating
    # 7. Advisory
    # 8. Reporting
    #
    #
    # * `Administrationservice` - A classification that distinguishes between instances of product features according to administrative tasks related to the Banking Product or Service.
    # * `Accessservice` - A classification that distinguishes between product features according to way of the banking services can be accessed.
    #
    # The access to services becomes more and more important in the evolving markets. 
    # We need to separate different parts:
    # 1. The physical access to the infrastructure that allows access to the bank (where)
    # 2. The authorization of different parties to use the services of the bank (who)
    # 3. The agreed procedure to have access to different services (how)
    # 4. The services that are available for the different parties (what)
    #
    # * `Pricefeature` - A classification that distinguishes between instances of product features according to the cost/profit that is related to Banking Products or Services.
    #
    # In all commercial offerings, there is an agreed cost for both parties (e.g. the interest arrangements are in both directions). The pricing structure of products or packages is a service that gives the possibility to the client to adapt his costs to his individual situation.
    # We see different generic categories in the pricing structure of the different products.
    # 1. Compensations
    # 2. Prices
    # 3. Fees
    # 4. Discounts
    Productfeaturetypevalues ProductFeatureTypeValues?;
};

public type Party record {
    # PartyName
    Name PartyName?;
    # >
    # * `Person` - Human entity, as distinguished from a corporate entity (which is sometimes referred to as an 'artificial person'). ISO20022
    # * `Organisation` - Organised structure that is set up for a particular purpose. For example, a business, government body, department, charity, or financial institution. ISO20022
    Partytypevalues PartyType?;
    # The date when the identifier became valid.
    Datetime PartyDateTime?;
    # PartyIdentification
    Partyidentification PartyIdentification?;
    # >
    # * `Individual` - 
    # * `CommunityInterestCompany` - 
    # * `CharitableIncorporatedOrganisation` - 
    # * `Co-Operative` - 
    # * `Charity` - 
    # * `GeneralPartnership` - 
    # * `LimitedLiabilityPartnership` - 
    # * `ScottishLimitedPartnership` - 
    # * `LimitedPartnership` - 
    # * `PrivateLimitedCompany` - 
    # * `PublicLimitedCompany` - 
    # * `Sole(SoleTrader)` - 
    Partylegalstructuretypevalues PartyLegalStructureType?;
    # Economical activity of Party (ISO20022)
    Industrycode PartyActivityIndicator?;
};

# Economical activity of Party (ISO20022)
public type Industrycode record {
    # Code to identify economic activities by ISIC (United Nations International Standard Industrial Classification of all Economic Activities).
    string Industrycode?;
};

# Address to which the first agent is to send the remittance information. (ISO20022)
public type Contactpoint record {
    # >
    # * `ElectronicAddress` - Address which is accessed by electronic means. ISO20022
    # * `PostalAddress` - Information that locates and identifies a specific address. ISO20022
    # * `PhoneNumber` - Collection of information that identifies a phone address. ISO20022
    # * `Socialnetworkaddress` - A social network such as Facebook, Twitter, etc.
    Contactpointtypevalues ContactPointType?;
    # >
    # * `LocationIsResidentialAddressOfParty` - Location from which the affairs of a company are directed or location in which a person resides (the place of a person's home). ISO20022
    # * `LocationIsDomicileAddressOfParty` - Location in which a person is permanently domiciled (the place of a person's permanent home). ISO20022
    # * `LocationIsPlaceOfBirthOfParty` - 
    # * `LocationIsWorkAddressOfParty` - 
    # * `LocationIsDeliveryPointAddressOfParty` - 
    # * `PartyIsOwnerOfLocation` - Registered owner or title holder(s) of the property.
    # * `PartyIsOccupierOfLocation` - 
    # * `PartyIsAlliancePartnerOfLocation` - Reference to the bank alliance partner with some kind of link association to the location (used for location based marketing).
    # * `LocationIsContactPointAddressOfParty` - 
    Partylocationtypevalues PartyLocationType?;
    # Refers to the point of sale location
    Location LocationReference?;
    # PartyReference
    Party PartyReference?;
};

# Frequency at which the fee is charged
public type Frequency record {
    # >
    # * `Annual` - Event takes place every year or once a year.
    # * `Monthly` - Event takes place every month or once a month.
    # * `Quarterly` - Event takes place every three months or four times a year.
    # * `Semiannual` - Event takes place every six months or two times a year.
    # * `Weekly` - Event takes place once a week.
    # * `Daily` - Event takes place every day.
    # * `Adhoc` - Event takes place on request or as necessary.
    # * `Intraday` - Event takes place several times a day.
    # * `Overnight` - Event takes place overnight.
    # * `Tendays` - Event takes place every ten business days.
    # * `Fortnightly` - Event takes place every two weeks.
    # * `Triggeredbymovement` - Event takes place at the end of the day if there was a movement on the account, otherwise nothing is sent that day.
    # * `Never` - Event does never take place.
    # * `Rate` - Event takes place based on a change of a rate.
    # * `Oncreditevent` - Event occurs due to a credit event occurring for an issuer.
    # * `Upfront` - Event that takes place at the initiation of a trade or agreement.
    # * `Onexpiry` - Event occurs on expiry of a financial contract.
    # * `Hourly` - Event takes place every hours.
    Frequencytypevalues FrequencyCode?;
    # FrequencyName
    Name FrequencyName?;
    # FrequencyDefinition
    string FrequencyDefinition?;
};

# Key dates related to the payment. 
public type Paymentdatetime record {
    # The date when the identifier became valid.
    Datetime PaymentDate?;
    # >
    # * `RequestedExecutionDate` - Date at which the initiating party requests the clearing agent to process the payment. ISO20022
    # Usage: This is the date on which the debtor's account is to be debited. If payment by cheque, the date when the cheque must be generated by the bank. 
    # * `AcceptanceDate` - Date and time at which all processing conditions for execution of the payment are met and adequate financial cover is available at the account servicing agent. ISO20022
    # * `CreationDate` - Date and time at which the payment execution was created by the instructing agent. ISO20022
    # * `ValueDate` - Date on which a payment must be executed (ISO20022)
    # * `DueDate` - Due date for the payment. (ISO20022)
    #
    # Latest date whereby the amount of money must be paid. (ISO20022)
    # * `ExpiryDate` - 
    # * `ExpectedDate` - Expected date whereby the amount must be paid.
    # * `PoolingAdjustmentDate` - Date used for the correction of the value date of a cash pool movement that has been posted with a different value date. (ISO20022)
    Paymentdatetimetypevalues PaymentDateType?;
};

# An arranged FeeRatePlan
public type Feeplan record {
    # FeePlanName
    Name FeePlanName?;
    # >
    # * `StandardFeePlan` - 
    # * `FinalFeePlan` - 
    Feeplantypevalues FeePlanType?;
    # FeePlan
    Plan FeePlan?;
};

# Amount of the payment (arranged to be paid)
public type Paymentamountandcurrency record {
    # >
    # * `InstructedAmountAndCurrency` - The amount the debtor asks their bank to transfer (e.g., “Send 100 EUR”).
    # * `EquivalentAmountAndCurrency` - If the debtor’s account is in a different currency, this is the converted equivalent (e.g., 100 USD = 91 EUR).
    # * `DebtorAccountAmountAndCurrency` - The actual amount debited from the debtor’s account (after currency conversion, possibly including charges).
    # * `InterbankSettlementAmountAndCurrency` - The amount exchanged/settled between the banks (may be in a different settlement currency, e.g., USD).
    # * `CreditorAccountAmountAndCurrency` - The amount credited to the creditor’s account in their account currency (e.g., GBP).
    # * `Net/ReceivedAmountAndCurrency` - The final amount the creditor actually receives after any deductions (e.g., fees).
    Paymentamountandcurrencytypevalues PaymentAmountAndCurrencyType?;
    # The amount corresponding to the type
    Amount PaymentAmountAndCurrency?;
};

public type Paymentidentification record {
    # A unique reference to product agreement or instance of product
    Identifier PaymentIdentification?;
    # >
    # * `Executionidentification` - Unique and unambiguous identifier for a payment execution, as assigned by the clearing agent or the initiating party. (ISO20022)
    # * `Endtoendidentification` - Unique and unambiguous identifier for a payment as assigned by the originator. The payment transaction reference is used for reconciliation or to link tasks relating to the payment. (ISO20022)
    # * `Instructionidentification` - Unique identification assigned by an instructing party for an instructed party to unambiguously identify the instruction. (ISO20022)
    # * `Transactionidentification` - Unique identification assigned by the first instructing agent to unambiguously identify the transaction and passed on, unchanged, throughout the entire interbank chain. (ISO20022)
    # * `Clearingsystemreference` - Unique and unambiguous identifier for a payment instruction, as assigned by the clearing system.(ISO20022)
    # * `Creditorreference` - Unique and unambiguous reference assigned by the creditor to refer to the payment obligation. (ISO20022)
    # * `UETR` - Universally unique identifier to provide an end-to-end reference of a payment transaction. (ISO20022)
    # * `Counterpartyreference` - Unambiguous identification of the trade allocated by the counterparty.(ISO20022)
    # * `Identification` - Reference assigned to the trade by the investor or the trading party. This reference will be used throughout the trade life cycle to access/update the trade details. (ISO20022)
    # * `Commonidentification` - Unique reference agreed upon by the two trade counterparties to identify the trade. (ISO20022)
    # * `Matchingreference` - Reference assigned by a matching system when the trade is matched.(ISO20022)
    # * `Uniquetradeidentifier` - This field specifies the unique transaction identifier (UTI) to be created at the time a transaction is first executed, shared with all registered entities and counterparties involved in the transaction, and used to track that particular transaction over its life. This identifier can also be known as the Unique Swap Identifier (USI). (ISO20022)
    # * `Clearingbrokeridentification` - Reference number assigned by the clearing broker. (ISO20022)
    # * `PaymentOrderID` - Internal unique identifier for the payment instruction, used within the bank’s systems to track the order from initiation through to execution.
    # * `ClientReference` - A reference provided by the customer (payer) to identify the payment (e.g., invoice number, transaction reference). Useful for reconciliation by the customer.
    # * `End-To-EndID` - Identifier that stays the same across the entire payment chain (from ordering customer to beneficiary) to allow straight-through reconciliation. Common in ISO 20022 standards.
    # * `ExternalReference` - Transaction identifier assigned by external schemes/networks (e.g., SWIFT MT/MX reference, SEPA End-to-End ID, clearing house reference).
    # * `InstructionID` - Unique identifier for a specific instruction within a batch of payment orders.
    # * `TransactionID(ExecutionID)` - Identifier created by the Payment Execution domain once the actual funds movement is initiated. Links execution to the originating order.
    Paymentidentificationtypevalues PaymentIdentificationType?;
};

public type Partyidentification record {
    # >
    # * `Taxidentificationnumber` - Number assigned by a tax authority to an entity.
    # * `Nationalregistrationnumber` - Number assigned by a national registration authority to an entity. In Singapore this is known as the NRIC. (ISO20022)
    # * `Registrationauthorityidentification` - An identifier for the Legal Entity in a business registry in the jurisdiction of legal registration, or in the appropriate registration authority. (ISO20022)
    # * `LEI(LegalEntityIdentifier)` - 
    # * `Alienregistrationnumber` - Number assigned by a government agency to identify foreign nationals.
    # * `Passportnumber` - Number assigned by a passport authority.
    # * `Taxexemptidentificationnumber` - Number assigned to a tax exempt entity.
    # * `Corporateidentification` - Number assigned to a corporate entity.
    # * `Driverlicensenumber` - Number assigned to a driver's license.
    # * `Foreigninvestmentidentitynumber` - Number assigned to a foreign investor (other than the alien number).
    # * `Socialsecuritynumber` - Number assigned by a social security agency.
    # * `Identitycardnumber` - Number assigned by a national authority to an identity card.
    # * `Concat` - Number assigned by an issuer to identify a customer via the concatenation of the birthdate and characters of the first name and surname.
    # * `Nationalregistrationidentificationnumber` - National registration identification number. In Singapore this is known as the NRIC.
    Partyidentificationtypevalues PartyIdentificationType?;
    # A unique reference to product agreement or instance of product
    Identifier PartyIdentification?;
};

# The name of the branch where the party will collect the device
public type Branch record {
    # A unique reference to product agreement or instance of product
    Identifier BranchIdentification?;
    # A unique reference to product agreement or instance of product
    Identifier BranchLegalEntityIdentification?;
    # BranchAddress
    Address BranchAddress?;
    # BranchName
    Name BranchName?;
};

# Rate used to calculate the amount of the adjustment, allowance, charge or fee. (ISO20022)
public type Rate record {
    # RateValue
    string RateValue?;
    # The unit of measure like Percentage or BPS
    #
    # Basis points (BPS) refers to a common unit of measure for interest rates and other percentages in finance.
    string RateUnit?;
    # Period during which the agreement is valid
    Datetimeperiod RatePeriod?;
    # RateCapitalUnit
    string RateCapitalUnit?;
};

public type Agreement record {
    # AgreementAction
    Action AgreementAction?;
    # The date when the identifier became valid.
    Datetime AgreementStartDate?;
    # The date when the identifier became valid.
    Datetime AgreementEndDate?;
    # A characteristic of agreement which refers to the LifecycleStatus of agreement (e.g., potential, offered, confirmed, completed, signed, terminated).
    Agreementstatus AgreementStatus?;
    # AgreementSubjectMatter
    Subject AgreementSubjectMatter?;
    # >
    # * `CustomerAgreement` - 
    # * `SupplierAgreement` - 
    # * `BrokerAgreement` - 
    # * `SalesAgreement` - 
    # * `PurchaseAgreement` - 
    # * `MaintenanceAgreement` - 
    # * `ProductAgreement` - 
    # * `ResourceAgreement` - 
    # * `PartnerAgreement` - 
    # * `MasterAgreement` - 
    # * `BilateralAgreement` - 
    # * `RepurchaseAgreement` - 
    Agreementtypevalues AgreementType?;
    # AgreementIdentification
    Identifier AgreementIdentification?;
    # The date when the identifier became valid.
    Datetime AgreementDate?;
    # AgreementDescription
    string AgreementDescription?;
    # Period of time during which the status is valid.
    Datetimeperiod AgreementValidityPeriod?;
    # AgreementVersion
    string AgreementVersion?;
    # Date on which the agreement was signed by all parties. (ISO20022)
    Date AgreementSignedDate?;
};

# The type of channel device involved in the session exchange (e.g. web, phone, chat, video, VOIP, face to face at a branch - note there can be concurrent sessions within a single customer contact)
public type Session record {
    # The total elapsed time of the dialogue session, typically calculated as the difference between End Time and Start Time (may also include idle/hold time if relevant).
    Duration SessionDuration?;
    # The date when the identifier became valid.
    Datetime SessionDateAndTime?;
    # The tracked status (e.g. under construction or repair, inhabited, vacant).
    Status SessionStatus?;
    # Specifies the classification of session like Customer Contact Session, Channel Operating Session, Device Operating Session, etc.
    Sessiontype SessionType?;
    # The schedule of past and planned customer contacts
    Schedule SessionScheduel?;
    # SessionIdentification
    Identifier SessionIdentification?;
};

# Reference to a dialogue log that is built up
public type SessionDialogueLog record {
    # LogType
    string LogType?;
    # Period of time during which the status is valid.
    Datetimeperiod LogPeriod?;
    # The date when the identifier became valid.
    Datetime LogDate?;
    # LogIdentification
    Identifier LogIdentification?;
};

# Reference to the servicing position - can be where an inbound contact is routed, or the source of an outbound contact request
public type Position record {
    # PositionValue
    string PositionValue?;
    # PositionQuantity
    string PositionQuantity?;
    # The date when the identifier became valid.
    Datetime PositionDate?;
    # PositionAmount
    Amount PositionAmount?;
};

# Reference to a specific product instance provided by the customer
public type ProductAgreement record {
    # >
    # * `CurrentAccountAgreement` - 
    # * `SavingsAccountAgreement` - 
    # * `BrokeredProductAgreement` - 
    # * `ConsumerLoanAgreement` - 
    # * `MortgageLoanAgreement` - 
    # * `DirectDebitServiceAgreement` - 
    # * `TermDepositAgreement` - 
    Productagreementtypevalues ProductAgreementType?;
    # ProductAgreementIdentification
    Identifier ProductAgreementIdentification?;
    # Date on which the agreement was signed by all parties. (ISO20022)
    Date AgreementSignedDate?;
    # >
    # * `CustomerAgreement` - 
    # * `SupplierAgreement` - 
    # * `BrokerAgreement` - 
    # * `SalesAgreement` - 
    # * `PurchaseAgreement` - 
    # * `MaintenanceAgreement` - 
    # * `ProductAgreement` - 
    # * `ResourceAgreement` - 
    # * `PartnerAgreement` - 
    # * `MasterAgreement` - 
    # * `BilateralAgreement` - 
    # * `RepurchaseAgreement` - 
    Agreementtypevalues AgreementType?;
    # Period of time during which the status is valid.
    Datetimeperiod AgreementValidityPeriod?;
    # AgreementVersion
    string AgreementVersion?;
    # A characteristic of agreement which refers to the LifecycleStatus of agreement (e.g., potential, offered, confirmed, completed, signed, terminated).
    Agreementstatus AgreementStatus?;
    # AgreementSubjectMatter
    string AgreementSubjectMatter?;
    # AgreementIdentification
    Identifier AgreementIdentification?;
    # The date when the identifier became valid.
    Datetime AgreementDate?;
    # AgreementDescription
    string AgreementDescription?;
};

# Reference to the servicing resource - can be to handle an inbound contact or the source of an outbound contact request
public type ServicingResource record {
    # ResourceStatus
    string ResourceStatus?;
    # ResourceAvailabilitySchedule
    string ResourceAvailabilitySchedule?;
    # ResourceLocation
    string ResourceLocation?;
    # ResourceQualificationProfile
    string ResourceQualificationProfile?;
};

# The servicing resource for assisted customer exchanges
public type Employee record {
    # Party who is employed by an employer. 
    string Employee?;
};

# The type of product involved
public type Product record {
    # The identifier of product e.g. ISIN Code.
    Productidentification ProductIdentification?;
    # >
    # * `LoanProduct` - 
    # * `CurrentAccountProduct` - 
    # * `SavingAccountProduct` - 
    # * `BrokeredProduct` - 
    # * `TermDepositProduct` - 
    Bankingproducttypevalues ProductType?;
    # Refers to the lifecycle of a product (e.g., initiated, announced, active, obsolete, withdrawn).
    Productstatus ProductLifecycleStatus?;
    # ProductPriority
    string ProductPriority?;
    # A detailed explanation or commentary of product.
    string ProductDescription?;
    # ProductVersion
    string ProductVersion?;
    # Name (label) of the location. (ISO20022)
    Name ProductName?;
    # >
    # * `Loan` - 
    # * `Bond` - 
    # * `Deposit` - 
    # * `Stock` - 
    # * `Option` - 
    # * `Share` - 
    # * `Debt` - Financial instruments evidencing moneys owed by the issuer to the holder on terms as specified. (ISO20022)
    #
    # Any type of instrument primarily classified as debt can be considered a debt instrument. Debt instruments are tools an individual, government entity, or business entity can utilize for the purpose of obtaining capital. Debt instruments provide capital to an entity that promises to repay the capital over time. Credit cards, credit lines, loans, and bonds can all be types of debt instruments. (Investopedia)
    # * `Letterofcredit` - Instrument issued by a bank substituting its name and credit standing for that of its customer. A letter of credit is a written undertaking of the bank, issued for the account of a customer (the applicant), to honour a demand for payment, upon the beneficiary's compliance with the terms and conditions set forth in the undertaking. (ISO20022)
    # * `Security` - Financial instruments representing a sum of rights of the investor vis-a-vis the issuer. (ISO20022)
    # * `Derivative` - 
    Financialinstrumenttypevalues FinancialInstrumentType?;
    # FinancialInstrumentIdentification
    Financialinstrumentidentification FinancialInstrumentIdentification?;
    # Name (label) of the location. (ISO20022)
    Name FinancialInstrumentName?;
    # Key dates of financial instrument
    Financialinstrumentdatetime FinancialInstrumentDate?;
    # AssetTitle
    string AssetTitle?;
    # AssetIdentification
    Identifier AssetIdentification?;
    # >
    # * `TangibleAsset` - It has a physical form and can be touched or seen.
    # * `IntangibleAsset` - It doesn't have a physical form but hold value
    # * `OperatingAsset` - Used in the day-to-day operations of the business.
    # * `Non-OperatingAsset` - Not used in core business operations but still provide value
    # * `CurrentAsset` - Expected to be converted into cash within one year.
    # * `Non-Current(Fixed)Asset` - Provide value over the long term (more than one year).
    # * `PersonalAsset` - Owned by individuals and not related to a business.
    # * `BusinessAsset` - Owned by a business and used to generate revenue.
    Assettypevalues AssetType?;
    # Description of the asset 
    string AssetDescription?;
    # The tracked status (e.g. under construction or repair, inhabited, vacant).
    Status AssetStatus?;
    # The date when the identifier became valid.
    Datetime AssetDate?;
    # Classification of the asset.(ISO20022)
    string AssetClassification?;
    # AssetClassificationType
    Assetclassificationtypevalues AssetClassificationType?;
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
    Assetsubclassificationtypevalues AssetSubClassificationType?;
    # AssetSubClassification
    string AssetSubClassification?;
};

# The identifier of product e.g. ISIN Code.
public type Productidentification record {
    # ProductIdentification
    Identifier ProductIdentification?;
    # >
    # * `ISINCode` - 
    # * `PackageCode` - 
    # * `Buyersitemnumber` - Product identifier assigned by the buyer.
    # * `Commercialdescriptioncodename` - A code to identify a product based on applicable commercial conditions.
    # * `EAN` - The unique EAN (European Article Number) code.
    # * `Harmonizedtariffcodename` - Classification of goods as developed by the Customs Cooperation council.
    # * `Manufacturersitemnumber` - Product identifier as assigned by the manufacturer.
    # * `Modelnumber` - Reference number assigned by the manufacturer to differentiate variations in similar products in a class or group.
    # * `Partnumber` - Reference assigned by the manufacturer to a product part.
    # * `Quotacategory` - Product identifier used by the retail industry.
    # * `Stylenumber` - Identification of the style of a product.
    # * `Suppliersitemnumber` - Number assigned to an article by the supplier of that article.
    # * `Universalproductcode` - Number assigned to a manufacturer's product by the Product Code Council.
    Productidentificationtypevalues ProductIdentificationType?;
};

# Refers to the lifecycle of a product (e.g., initiated, announced, active, obsolete, withdrawn).
public type Productstatus record {
    # The tracked status (e.g. under construction or repair, inhabited, vacant).
    Status ProductStatus?;
    # >
    # * `Initiated` - 
    # * `Announced` - 
    # * `Sold` - 
    # * `Obsolete` - 
    # * `Active` - 
    Productstatustypevalues ProductStatusType?;
};

public type Financialinstrumentidentification record {
    # FinancialInstrumentIdentification
    Identifier FinancialInstrumentIdentification?;
    # >
    # * `NASDAQ` - 
    # * `ISIN` - 
    Financialinstrumentidentificationtypevalues FinancialInstrumentIdentificationType?;
};

# Key dates of financial instrument
public type Financialinstrumentdatetime record {
    # The date when the identifier became valid.
    Datetime FinancialInstrumentDate?;
    # >
    # * `CouponDate` - Next payment date of an interest bearing financial instrument.(ISO20022)
    # * `ExpiryDate` - Date on which a privilege expires.(ISO20022)
    # * `FloatingRateFixingDate` - Date at which the interest rate of an interest bearing security will be calculated and reset, according to the terms of the issue.(ISO20022)
    # * `MaturityDate` - Planned final repayment date at the time of issuance.(ISO20022)
    # * `IssueDate` - Date at which the security was made available.(ISO20022)
    # * `NextCallableDate` - Next date at which the issuer has the right to pay the security prior to maturity.(ISO20022)
    # * `PutableDate` - Date at which the holder has the right to ask for redemption of the security prior to final maturity.(ISO20022)
    # * `DatedDate` - First date at which a security begins to accrue interest.(ISO20022)
    # * `FirstPaymentDate` - Date at which the first interest payment is due to holders of the security.(ISO20022)
    Financialinstrumentdatetimetypevalues FinancialInstrumentDateType?;
};

public type Assetclassificationtypevalues record {
    # Assetclassificationtypevalues
    string Assetclassificationtypevalues?;
};

# The main worsteps to be followed in th eexecution of the procedure
#
# Examples: Invoice generation
public type History record {
    # Details the response and any customer reaction
    Task HistoryTaskResult?;
};

# The main worsteps to be followed in th eexecution of the procedure
#
# Examples: Invoice generation
public type Authentication record {
    # The target level of authentication required
    string RequiredAuthenticationLevel?;
    # Details the response and any customer reaction
    Task AuthenticationTaskResult?;
};

# Consolidates details of the preference
public type Profile record {
    # A brief description of the characteristics of something or someone. (Business Dictionary)
    string Profile?;
};

# Reference to a specific type of predefined market research report or database
public type MarketResearchReportType record {
    # Classification of a Market Research Report 
    #
    # further classification within the report type" market research"
    string MarketResearchReportType?;
    # description of what can be expected from the content of a market research report of this type
    string MrketResearchReportTypeDefinition?;
};

# Reference to the transaction that is related to Servicing Issue Procedure
public type Transaction record {
    # The identifier of Condition
    Identifier TransactionIdentification?;
    # The Date that the transaction has occurred or is planned to occur.
    # A characteristic of transaction which refers to the LifecycleDate of transaction (e.g., initiated date, executed date, fulfillment date). 
    Transactiondatetime TransactionDate?;
    # >
    # * `FinancialTransaction` - 
    # * `BusinessTransaction` - 
    # * `BankingTransaction` - 
    # * `AccountingTransaction` - 
    # * `BookingTransaction` - 
    # * `AllocationTransaction` - 
    # * `DeliveryTransaction` - 
    # * `ProductionTransaction` - 
    Transactiontypevalues TransactionType?;
    # A detailed explanation or commentary of transaction.
    string TransactionDescription?;
    # A characteristic of transaction which refers to the LifecycleStatus of transaction (e.g., initiated, executed, confirmed, cancelled, etc.) 
    Transactionstatus TransactionStatus?;
    # The name of Condition
    Name TransactionName?;
    # >
    # * `Initiate` - 
    # * `Execute` - 
    # * `Create` - 
    # * `Transfer` - 
    # * `Pay` - 
    # * `Deliver` - 
    # * `Apply` - 
    # * `Calculate` - 
    Actiontypevalues ActionType?;
    # EventType
    string EventType?;
    # The date when the identifier became valid.
    Datetime EventDateTime?;
    # EventDescription
    string EventDescription?;
    # EventSource
    string EventSource?;
    # EventLocation
    Location EventLocation?;
    # EventAction
    Action EventAction?;
    # EventStatus
    Status EventStatus?;
    # EventValue
    string EventValue?;
    # The validity period of Condition
    Datetimeperiod EventValidityPeriod?;
    # The identifier of Condition
    Identifier EventIdentification?;
};

public type DocumentDirectoryEntry record {
    # Identification allowing the retrieval of a document from a Document Directory
    string DocumentDirectoryEntryIdentification?;
    # >
    # * `OpenDate` - 
    # * `RefreshDate` - 
    Directoryentrydatetypevalues DirectoryEntryDateType?;
    # DirectoryEntryDate
    Date DirectoryEntryDate?;
    # The tracked status (e.g. under construction or repair, inhabited, vacant).
    Status DirectoryEntryStatus?;
};

public type Paymentinstructionstatus record {
    # The tracked status (e.g. under construction or repair, inhabited, vacant).
    Status PaymentInstructionStatus?;
    # >
    # * `Pendingprocessing` - Processing of the instruction is pending.
    # * `Acknowledgedaccepted` - Instruction has been acknowledged and accepted and is validated for further processing.
    # * `Rejected` - Instruction has been rejected.
    # * `Accepted` - Instruction has been accepted and is validated for further processing.
    # * `Completed` - Processing has been completed.
    # * `Notreceived` - No instruction has been received (to be used in a reminder).
    # * `Cancelled` - Instruction has been cancelled.
    # * `Beingcancelled` - Cancel request is being processed.
    # * `Receivedbyissuerorregistrar` - Instruction has been received by Issuer.
    # * `Pending` - Instruction is pending.
    # * `Standinginstruction` - Standing instruction is applied.
    # * `Queued` - Instruction is queued.
    # * `Cancelledbysubcustodian` - Instruction has been cancelled by the agent, for example, due to an event deadline extension.
    # * `Forwarded` - Accepted and sent along the chain.
    Instructionstatustypevalues PaymentInstructionStatusType?;
};

# Reference to the correspondence generated and received
public type Correspondence record {
    # >
    # * `UnsolicitedMessage` - 
    # * `Complaint` - 
    # * `EnumerationLiteral` - 
    Correspondencetypevalues CorrespondenceType?;
    # The address for message delivery (needs to match channel selection)
    Address CorrespondenceAddress?;
    # Key dates associated with the directory entry (e.g. open date, refresh date).
    Datetime CorrespondenceDateTime?;
    # The message content (aligned to template as appropriate)
    string CorrespondenceContent?;
    # Template used to assemble standard format correspondence (can be supplied with the correspondence or maintained within the Correspondence service domain as appropriate)
    string CorrespondenceTemplate?;
    # >
    # * `Fax` - Transmission by fax.
    # * `Email` - Transmission by e-mail.
    # * `Proprietary` - Transmission by proprietary method.
    # * `Online` - Transmission on line, for example, in a web portal.
    # * `Phone` - Transmission by telephone.
    # * `Postalservice` - Transmission by postal service.
    # * `File` - Transmission by file transfer.
    Correspondencecommunicationmethodtypevalues CorrespondenceCommunicationMethod?;
    # >
    # * `PostalAddress` - 
    # * `GeolocationAddress` - 
    # * `LatitudeAddress` - 
    # * `LongitudeAddress` - 
    # * `ElectronicAddress` - 
    Addresstypevalues CorrespondenceAddressType?;
    # >
    # * `Paper` - Presentation is made on paper.
    # * `Electronic` - Presentation is made electronically.
    # * `Paperelectronic` - Presentation is made on paper and/or electronically.
    # * `Biometric` - Biometric medium.
    Correspondencemediumtypevalues CorrespondenceMedium?;
};

# Reference to the resolution payment order when financial adjustments are required to resolve the card case
public type CardPaymentCaseResolution record {
    # The time schedule that system services are available for use.
    Schedule ResolutionSchedule?;
    # The type of resolution (e.g. success, deferred, rejected)
    string ResolutionType?;
    # Description of the resolution of the investigation case
    string Description?;
};

# Reference the parent entity if applicable
public type Organisation record {
    # Description of the structure of a company. ISO20022
    string OrganisationStructureHierarchy?;
    # OrganisationIdentification
    Organisationidentification OrganisationIdentification?;
    # Sector of business of the organisation, for example, pharmaceutical. (ISO20022)
    string OrganisationSector?;
    # LegalEntityIndicator
    string LegalEntityIndicator?;
    # OrganisationDate
    Organisationdatetime OrganisationDate?;
    # >
    # * `LegalEntity` - 
    # * `Authority` - 
    # * `OrganisationUnit` - 
    # * `FinancialInstitution` - 
    # * `Charity` - 
    # * `GovernmentBody` - 
    Organisationtypevalues OrganisationType?;
    # OrganisationName
    Organisationname OrganisationName?;
    # >
    # * `Corporation` - Legal structure is a corporation.
    # * `Individual` - Legal structure is an individual.
    # * `Supranational` - Legal structure is a supranational.
    # * `Sovereign` - Legal structure is a sovereign.
    # * `Municipal` - Legal structure is a municipal.
    # * `Province` - Legal structure is a province.
    # * `State` - Legal structure is a state.
    # * `County` - Legal structure is a county.
    # * `Partnership` - Legal structure is a partnership.
    # * `Financialinstitution` - Legal structure is a financial institution.
    # * `National` - Legal structure is a state.
    Organisationlegalstructuretypevalues OrganisationLegalStructure?;
    # Name by which a party is known and which is usually used to identify that party. (ISO20022)
    Name PartyName?;
    # >
    # * `Person` - Human entity, as distinguished from a corporate entity (which is sometimes referred to as an 'artificial person'). ISO20022
    # * `Organisation` - Organised structure that is set up for a particular purpose. For example, a business, government body, department, charity, or financial institution. ISO20022
    Partytypevalues PartyType?;
    # PartyDateTime
    Datetime PartyDateTime?;
    # PartyIdentification
    Partyidentification PartyIdentification?;
    # >
    # * `Individual` - 
    # * `CommunityInterestCompany` - 
    # * `CharitableIncorporatedOrganisation` - 
    # * `Co-Operative` - 
    # * `Charity` - 
    # * `GeneralPartnership` - 
    # * `LimitedLiabilityPartnership` - 
    # * `ScottishLimitedPartnership` - 
    # * `LimitedPartnership` - 
    # * `PrivateLimitedCompany` - 
    # * `PublicLimitedCompany` - 
    # * `Sole(SoleTrader)` - 
    Partylegalstructuretypevalues PartyLegalStructureType?;
    # Economical activity of Party (ISO20022)
    Industrycode PartyActivityIndicator?;
};

# List of major shareholders and shareholdings of significance
public type ShareholdingProfile record {
    # List of major shareholders and shareholdings of significance. 
    string ShareholdingProfile?;
};

# "An assertion or statement with regard to a concept, a characteristic.
#
# Examples: Product pricing rules, Customer reference details
#
# A descriptor can be atomic or composed."
# Prospect Management
public type Associations record {
    # Reference to the associated entity (e.g. company or individual)
    Party LegalEntityAssociationReference?;
    # Nature or type of association (e.g. corporate or familial)
    string LegalEntityAssociationType?;
    # Description of the association and applicable obligations  (e.g. shareholder, director, guardian, guarantor)
    Arrangement LegalEntityAssociationObligation?;
    # Reference the parent entity if applicable
    Organisation ParentLegalEntityReference?;
    # Reference the parent entity if applicable
    Organisation SubsidiaryLegalEntityReference?;
    # List of major shareholders and shareholdings of significance
    ShareholdingProfile ShareholdingProfile?;
};

# "An assertion or statement with regard to a concept, a characteristic.
#
# Examples: Product pricing rules, Customer reference details
#
# A descriptor can be atomic or composed."
# Prospect Management
public type Reference record {
    # Name by which a party is known and which is usually used to identify that party. (ISO20022)
    Name LegalEntityOfficialName?;
    # The type of legal entity (e.g. individual, Inc, Plc)
    string LegalEntityType?;
    # Reference the parent entity if applicable
    Organisation SectorsofOperation?;
    # The registered address for the legal entity
    Address RegisteredAddress?;
    # The registered address for the legal entity
    Address HeadquartersLocation?;
    # The date of incorporation (or dates when subsidiaries involved)
    string DateofIncorporation?;
    # The jurisdiction governing the company
    Jurisdiction JurisdictionofIncorporation?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    Involvedparty RegistrationAuthority?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    Involvedparty PrimaryRegulator?;
    # TaxReference
    Identifier TaxReference?;
    # The bank's contact role or roles established to maintain the relationship with the bank (e.g. CEO)
    string ContactRole?;
    # The address of the bank's contact's within the entity
    string ContactAddressDetails?;
};

# The general type of product/service for which the best eligible product match is requested (e.g. term deposit, loan)
public type Bankingproducttype record {
    # ProductTypeDefinition
    string ProductTypeDefinition?;
    # >
    # * `LoanProduct` - 
    # * `CurrentAccountProduct` - 
    # * `SavingAccountProduct` - 
    # * `BrokeredProduct` - 
    # * `TermDepositProduct` - 
    Bankingproducttypevalues ProductType?;
    # ProductClassificationIssuingAuthority
    string ProductClassificationIssuingAuthority?;
};

# Maintain the terms and conditions that apply to a commercial relationship within Customer Agreement.
public type CustomerAgreement record {
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    Involvedparty CustomerReference?;
    # Reference to the legal entity that is the subject of the agreement
    Organisation LegalEntityReference?;
    # >
    # * `CustomerAgreement` - 
    # * `SupplierAgreement` - 
    # * `BrokerAgreement` - 
    # * `SalesAgreement` - 
    # * `PurchaseAgreement` - 
    # * `MaintenanceAgreement` - 
    # * `ProductAgreement` - 
    # * `ResourceAgreement` - 
    # * `PartnerAgreement` - 
    # * `MasterAgreement` - 
    # * `BilateralAgreement` - 
    # * `RepurchaseAgreement` - 
    Agreementtypevalues AgreementType?;
    # The legal jurisdiction
    Jurisdiction AgreementJurisdiction?;
    # The date when the identifier became valid.
    Datetime AgreementValidFromToDate?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    Involvedparty AgreementSignatoriesResponsibleParties?;
    # Reference to any associated documents
    DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # Reference to product specific T&Cs maintained elsewhere but subordinate to this agreement
    ProductAgreement SalesProductAgreementReference?;
    # Reference to KYC/Regulatory assessments maintained elsewhere for the customer
    PartyRelationshipLifecyclePhase PartyLife\-cycleManagementReference?;
};

# Reference to the behavior model used to develop the insight
public type CustomerBehaviorModel record {
    # >
    # * `DemographicModel` - Analyze customer behavior based on demographic factors such as age, gender, income, education, and occupation.
    # Example: Segmenting customers by age group to tailor marketing strategies.
    # * `PsychographicModel` - Focus on psychological attributes, including values, attitudes, interests, and lifestyles.
    # Example: Creating buyer personas based on lifestyle choices and interests.
    # * `GeographicModel` - Look at customer behavior based on geographic location, considering factors like regional preferences and climate.
    # Example: Targeting advertisements based on location-specific needs.
    # * `SocioeconomicModel` - Combine social and economic factors to understand consumer behavior
    # Example: Analyzing how economic status influences buying decisions
    # * `SituationalModel` - Consider the context or situation in which the consumer is making a decision, including time of day, season, and situational needs.
    # Example: Promoting holiday-related products during festive seasons.
    # * `CulturalModel` - Focus on the influence of culture, traditions, and social norms on consumer behavior.
    # Example: Adapting marketing messages to align with cultural values and practices.
    # * `Usage-BasedModel` - Segment customers based on how they use a product or service, including frequency and intensity of use.
    # Example: Differentiating between heavy, moderate, and light users of a product.
    # * `Benefit-SoughtModel` - Classify customers according to the benefits they seek from a product or service.
    # Example: Marketing products based on specific benefits like convenience, cost-saving, or luxury.
    # * `HybridModel` - Combine elements from various models to provide a comprehensive view of customer behavior.
    # Example: Using demographic, psychographic, and behavioral data together for more precise targeting
    Customerbehaviormodeltypevalues CustomerBehaviorModelType?;
    # The type or category of model  
    string ModelType?;
    # A description of the model that clarifies the intended analysis/insights provided
    string ModelPurpose?;
    # ModelVersion
    string ModelVersion?;
    # ModelName
    Name ModelName?;
    # ModelDateAndTime
    Datetime ModelDateAndTime?;
    # ModelStatus
    Status ModelStatus?;
};

# The Record containing the selected event records from the log
public type CustomerEventLog record {
    # LogType
    string LogType?;
    # LogPeriod
    Datetimeperiod LogPeriod?;
    # LogDate
    Datetime LogDate?;
    # LogIdentification
    Identifier LogIdentification?;
};

# Refers to the insight
public type CustomerInsight record {
    # >
    # * `CustomerBehavioralInsight` - Understanding how customers interact with products, services, and brands.
    # * `CustomerDemographicInsight` - Analyzing customer characteristics such as age, gender, income, education, and location.
    # * `CustomerPsychographicInsight` - Exploring customers' lifestyles, values, interests, and attitudes.
    # * `CustomerTransactionalInsight` - Examining purchase history, order frequency, average transaction value, and payment methods
    # * `CustomerFeedbackAndSentimentInsight` - Gathering and analyzing customer feedback through surveys, reviews, social media, and customer support interactions
    # * `CustomerJourneyInsight` - Mapping the entire customer journey from awareness to purchase and beyond
    # * `CustomerRetentionAndChurnInsight` - Understanding the factors that influence customer retention and attrition
    # * `CustomerFinancialInsight` - Customer financial insights refer to the analysis and understanding of the financial aspects related to customer interactions and behaviors. 
    Customerinsighttypevalues CustomerInsightType?;
    # CustomerInsightValue
    string CustomerInsightValue?;
    # CustomerInsightCalculationDate
    Datetime CustomerInsightCalculationDate?;
    # CustomerInsightDescription
    string CustomerInsightDescription?;
    # CustomerInsightIdentification
    Identifier CustomerInsightIdentification?;
};

# A record of the customers credit state
public type CustomerRating record {
    # >
    # * `CustomerProfitabilityRating` - A value of Customer Rating Type whereby customer profitability is measured.
    #
    # A customer profitability rating (CPR) is an assessment used by businesses to evaluate the profitability of individual customers or customer segments. This rating helps companies understand which customers contribute the most to their bottom line and enables them to tailor their strategies to maximize overall profitability.
    # * `CustomerCreditRating` - A value of Customer Rating Type whereby customer creditability is measured.
    #
    # A customer credit rating is a numerical score or rating that represents the creditworthiness of an individual or a business. It indicates the likelihood that the borrower will repay their debt obligations on time
    # * `CustomerRiskRating` - A customer risk rating is an assessment of the potential risk associated with a customer, often used in the context of anti-money laundering (AML) and know your customer (KYC) regulations. It evaluates the likelihood of a customer engaging in activities that could pose a legal, financial, or reputational risk to the institution.
    Customerratingtypevalues CustomerRatingType?;
    # CustomerRatingValue
    string CustomerRatingValue?;
    # CustomerRatingDescription
    string CustomerRatingDescription?;
    # Date and time at which the range starts. (ISO20022)
    Datetime CustomerRatingValueDate?;
    # CustomerRatingValidityPeriod
    Datetimeperiod CustomerRatingValidityPeriod?;
    # >
    # * `CustomerCreditPosition` - 
    # * `CounterpartyCreditPosition` - 
    Creditpositiontypevalues CreditPositionType?;
};

# Reference to the associated customer (can currently be a person or a company)
public type CustomerRelationship record {
    # RelationshipType
    string RelationshipType?;
    # RelationshipValidityPeriod
    Datetimeperiod RelationshipValidityPeriod?;
    # RelationshipStartDate
    Datetime RelationshipStartDate?;
    # RelationshipEndDate
    Datetime RelationshipEndDate?;
    # RelationshipLifecycleStatus
    Status RelationshipLifecycleStatus?;
    # RelationshipIdentification
    Identifier RelationshipIdentification?;
};

# The details of the event (in a suitable format)
public type Event record {
    # EventType
    string EventType?;
    # Date and time at which the status was assigned.
    Datetime EventDateTime?;
    # EventDescription
    string EventDescription?;
    # EventSource
    string EventSource?;
    # EventLocation
    Location EventLocation?;
    # EventAction
    Action EventAction?;
    # EventStatus
    Status EventStatus?;
    # EventValue
    string EventValue?;
    # Period of time during which the status is valid.
    Datetimeperiod EventValidityPeriod?;
    # EventIdentification
    Identifier EventIdentification?;
};

# Reference to any legal requirements
public type Law record {
    # LawType
    string LawType?;
    # LawDescription
    string LawDescription?;
    # the possible implications of breaking the law
    string LegalPenalty?;
    # A guidelines and requirement for following the law
    string LegalGuideline?;
    # RuleSetDefinition
    string RuleSetDefinition?;
    # RuleSetInterpretation
    string RuleSetInterpretation?;
    # >
    # * `Policy` - Rule that governs business execution.
    #
    # The set of basic principles and associated guidelines, formulated and enforced by the governing body of an organization, to direct and limit its actions in pursuit of long-term goals. (Business Dictionary)
    #
    # * `Regulation` - A rule used to carry out a law (FIBO)
    #
    # Business Dictionary: a rule (with or without the coercive power of law) employed in controlling, directing, or managing an activity, organization, or system. 
    #
    # The set of rules and legislation governing certain actions. 
    # https://financial-dictionary.thefreedictionary.com/Regulatory
    # * `Law` - A binding rule that the courts will enforce.
    # A system of rules and guidelines which are enforced through social institutions to govern behavior. (FIBO)
    #
    # * `Guideline` - A recommended practice (adapted from Business Dictionary)
    # A general rule, principle, or piece of advice.
    # * `Criterion` - A principle or standard by which something may be judged or decided.
    #
    # Read more: http://www.businessdictionary.com/definition/criterion.html
    # * `Standard` - A rule considered by an authority or by general consent as a basis of comparison
    Rulesettypevalues RuleSetType?;
    # RuleSetName
    Name RuleSetName?;
    # RuleSetIdentification
    Identifier RuleSetIdentification?;
    # RuleSetLifecycleStatus
    Status RuleSetLifecycleStatus?;
};

# A collection of terms (within some jurisdiction) that can be selected and configured to define a contract /agreement
#
# Examples: Required disclosures
public type LegalTerm record {
    # The legal jurisdiction
    Jurisdiction Jurisdiction?;
    # Reference to any legal requirements
    Law ApplicableLawReference?;
    # Explanation or interpretation of the law as applied
    string ApplicableLawInterpretation?;
};

public type LegalTermOk record {|
    *http:Ok;
    # body
    LegalTerm body;
|};

# Reference to KYC/Regulatory assessments maintained elsewhere for the customer
public type PartyRelationshipLifecyclePhase record {
    # Description
    string Description?;
    # Specifies whether the phase is the current phase of the party relationship.
    string IsCurrentPhase?;
    # PhaseName
    Name PhaseName?;
    # PhaseStatus
    Status PhaseStatus?;
    # Period of time during which the status is valid.
    Datetimeperiod PhasePeriod?;
};

# A collection of terms (within some jurisdiction) that can be selected and configured to define a contract /agreement
#
# Examples: Required disclosures
public type PolicyTerm record {
    # The type of bank policy referenced (e.g. staff certification)
    string BankPolicy\-RuleType?;
    # Reference to the bank's policies or rules
    RuleSet ApplicableBankPolicy\-RuleReference?;
    # Explanation or interpretation of the policy or rule as applied
    string ApplicableBankPolicy\-RuleInterpretation?;
};

public type PolicyTermOk record {|
    *http:Ok;
    # body
    PolicyTerm body;
|};

# Product/service features used to focus the selection
public type ProductFeature record {
    # >
    # * `Bankingservice` - A classification that distinguishes between instances of product features according to the core banking services, functionality and/or objectives of banking.
    #
    # e.g. deposit services, exchange services, etc.
    #
    # The primary reason for the contract with the client are the banking services. These services can be classified as follows:
    # 1. Selling services
    # 2. Financial Instruments Exchange
    # 3. Financial Stock Management
    # 4. Financial Transfers
    # 5. Financial Risk Transfer
    # 6. Business Operating
    # 7. Advisory
    # 8. Reporting
    #
    #
    # * `Administrationservice` - A classification that distinguishes between instances of product features according to administrative tasks related to the Banking Product or Service.
    # * `Accessservice` - A classification that distinguishes between product features according to way of the banking services can be accessed.
    #
    # The access to services becomes more and more important in the evolving markets. 
    # We need to separate different parts:
    # 1. The physical access to the infrastructure that allows access to the bank (where)
    # 2. The authorization of different parties to use the services of the bank (who)
    # 3. The agreed procedure to have access to different services (how)
    # 4. The services that are available for the different parties (what)
    #
    # * `Pricefeature` - A classification that distinguishes between instances of product features according to the cost/profit that is related to Banking Products or Services.
    #
    # In all commercial offerings, there is an agreed cost for both parties (e.g. the interest arrangements are in both directions). The pricing structure of products or packages is a service that gives the possibility to the client to adapt his costs to his individual situation.
    # We see different generic categories in the pricing structure of the different products.
    # 1. Compensations
    # 2. Prices
    # 3. Fees
    # 4. Discounts
    Productfeaturetypevalues ProductFeatureType?;
    # ProductFeatureSpecification
    string ProductFeatureSpecification?;
    # ProductFeatureIdentification
    Identifier ProductFeatureIdentification?;
    # ProductFeatureName
    Name ProductFeatureName?;
    # ProductFeatureLifecycleStatus
    Status ProductFeatureLifecycleStatus?;
};

# Records the sold/in-force status of a product/service with the customer. Again this detail is maintained by the service domain and referenced by this evaluation
public type ProductUsage record {
    # The date when the identifier became valid.
    Datetime ProductUsageDateTime?;
    # Usage volume/frequency for in-force product.
    string ProductUsageVolume?;
    # An indicator specifying if the whether the customer has bought  the banking product or not. 
    Yesnoindicator ProductUsageIndicator?;
};

# The applicable regulatory authority
public type RegulatoryAuthority record {
    # An organisation that is alowed to impose regulations
    string RegulatoryAuthority?;
};

# A collection of terms (within some jurisdiction) that can be selected and configured to define a contract /agreement
#
# Examples: Required disclosures
public type RegulatoryTerm record {
    # The applicable regulatory authority
    RegulatoryAuthority RegulatoryAuthority?;
    # Reference to any regulatory requirements
    Regulation ApplicableRegulationReference?;
    # Explanation or interpretation of the regulation as applied
    string ApplicableRegulationInterpretation?;
};

public type RegulatoryTermOk record {|
    *http:Ok;
    # body
    RegulatoryTerm body;
|};

# An indicator specifying if the whether the customer has bought  the banking product or not. 
public type Yesnoindicator record {
    # Indicates a "Yes" or "No" type of answer for an element. (ISO20022)
    # true: Yes
    # false: No
    string Yesnoindicator?;
};

# The main workteps to be followed in th execution of the Customer Campaign Procedure, like: The initial selection and confirmation of active customers that are to be included in the campaign
public type AnalysisFeedback record {
    # The result of the analysis of the performance of the campaign for the current cycle
    Analysis CustomerCampaignProcedureAnalysisResult?;
    # Description of the feedback provided to the campaign design team
    string CustomerCampaignProcedureAnalysisFeedbackResult?;
};

public type AnalysisFeedbackOk record {|
    *http:Ok;
    # body
    AnalysisFeedback body;
|};

# The result of the customer interaction, including any suggested follow-up tasks
public type Assignment record {
    # PartyReference
    Party PartyReference?;
    # PartyInvolvement
    Partyrole PartyInvolvement?;
    # SubjectMatter
    string SubjectMatter?;
};

# Reference to a directory of all the products and services that a customer (in campaign) has acquired from the bank.
public type CustomerProductAndServiceDirectoryEntry record {
    # CustomerProductAndServiceDirectoryEntryIdentification
    Identifier CustomerProductAndServiceDirectoryEntryIdentification?;
    # >
    # * `OpenDate` - 
    # * `RefreshDate` - 
    Directoryentrydatetypevalues DirectoryEntryDateType?;
    # DirectoryEntryDate
    Date DirectoryEntryDate?;
    # DirectoryEntryStatus
    Status DirectoryEntryStatus?;
};

# Reference to a list of products and services for which a customer (in Campaign) is eligible.
public type CustomerProductAndServiceProfile record {
    # >
    # * `Customerproductserviceeligibilityprofile` - 
    # * `Customerproductserviceusageprofile` - 
    # * `Customerproductservicecoverageprofile` - 
    # * `Customerproductservicesaleprofile` - 
    # * `Customerproductserviceconsentprofile` - 
    Customerproductserviceprofiletypevalues ProfileType?;
    # CustomerReference
    Customerrelationship CustomerReference?;
    # ProductReference
    Product ProductReference?;
    # ServiceReference
    Service ServiceReference?;
};

public type Customerrelationship record {
    # RelationshipType
    string RelationshipType?;
    # Period of time during which the status is valid.
    Datetimeperiod RelationshipValidityPeriod?;
    # The date when the identifier became valid.
    Datetime RelationshipStartDate?;
    # The date when the identifier became valid.
    Datetime RelationshipEndDate?;
    # RelationshipLifecycleStatus
    Status RelationshipLifecycleStatus?;
    # RelationshipIdentification
    Identifier RelationshipIdentification?;
};

# The main workteps to be followed in th execution of the Customer Campaign Procedure, like: The initial selection and confirmation of active customers that are to be included in the campaign
public type CandidateSelection record {
    # Details the selection criteria used to identify candidate customers
    RuleSet CustomerCampaignSelectionCriteria?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    Involvedparty CustomerCampaignCandidateEmployeeorBusinessUnitReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    Involvedparty CustomerCampaignCandidateReference?;
    # Reference to a directory of all the products and services that a customer (in campaign) has acquired from the bank.
    CustomerProductAndServiceDirectoryEntry CustomerProductandServiceDirectoryEntryReference?;
    # Reference to a list of products and services for which a customer (in Campaign) is eligible.
    CustomerProductAndServiceProfile CustomerProductandServiceEligibilityProfileReference?;
    # Reference to the lifecycle status of customer relationship (in Campaign)
    PartyRelationshipLifecyclePhase CustomerRelationshipLifecyclePhaseReference?;
};

# The main workteps to be followed in th execution of the Customer Campaign Procedure, like: The initial selection and confirmation of active customers that are to be included in the campaign
public type Execution record {
    # The type of work task (e.g. execute campaign in contact center)
    string CustomerCampaignProcedureWorkTaskType?;
    # Description of the task performed, includes summary of activities as necessary for reference
    string CustomerCampaignProcedureWorkTaskDescription?;
    # File of consolidated notes, forms and documents for the work task
    Workproduct CustomerCampaignProcedureWorkTaskWorkProducts?;
    # Reference to associated documents
    DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # Details of the outcome or result of the work task - can be the identification of a lead/opportunity
    string CustomerCampaignProcedureWorkTaskResult?;
    # The date when the identifier became valid.
    Datetime CustomerCampaignProcedureWorkTaskDateandTime?;
};

public type ExecutionOk record {|
    *http:Ok;
    # body
    Execution body;
|};

public type Partyrole record {
    # PartyRoleType
    string PartyRoleType?;
    # PartyRoleName
    Name PartyRoleName?;
    # Period of time during which the status is valid.
    Datetimeperiod PartyRoleValidityPeriod?;
    # >
    # * `AgreementInvolvement` - 
    # * `PartyInvolvement` - 
    # * `ArrangementInvolvement` - 
    # * `DesignSpecificationInvolvement` - 
    # * `RelationshipInvolvement` - 
    # * `LocationInvolvement` - 
    # * `BankGuaranteeInvolvement` - 
    Partyinvolvementtypevalues PartyInvolvementType?;
};

public type datetime record {
    # Information about reactions to an Advise which is used as a basis for improvement for the Corporate Finance Services Advice. ||
    # |
    text DateTimeContent?;
    # Information about reactions to an Advise which is used as a basis for improvement for the Corporate Finance Services Advice. ||
    # |
    text TimeZoneCode?;
    # Information about reactions to an Advise which is used as a basis for improvement for the Corporate Finance Services Advice. ||
    # |
    text DaylightSavingIndicator?;
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
    datetimetypevalues DateTimeType?;
};

public type datetimeperiod record {
    # FromDateTime
    datetime FromDateTime?;
    # ToDateTime
    datetime ToDateTime?;
};

public type partyidentification record {
    # >
    # * `Taxidentificationnumber` - Number assigned by a tax authority to an entity.
    # * `Nationalregistrationnumber` - Number assigned by a national registration authority to an entity. In Singapore this is known as the NRIC. (ISO20022)
    # * `Registrationauthorityidentification` - An identifier for the Legal Entity in a business registry in the jurisdiction of legal registration, or in the appropriate registration authority. (ISO20022)
    # * `LEI(LegalEntityIdentifier)` - 
    # * `Alienregistrationnumber` - Number assigned by a government agency to identify foreign nationals.
    # * `Passportnumber` - Number assigned by a passport authority.
    # * `Taxexemptidentificationnumber` - Number assigned to a tax exempt entity.
    # * `Corporateidentification` - Number assigned to a corporate entity.
    # * `Driverlicensenumber` - Number assigned to a driver's license.
    # * `Foreigninvestmentidentitynumber` - Number assigned to a foreign investor (other than the alien number).
    # * `Socialsecuritynumber` - Number assigned by a social security agency.
    # * `Identitycardnumber` - Number assigned by a national authority to an identity card.
    # * `Concat` - Number assigned by an issuer to identify a customer via the concatenation of the birthdate and characters of the first name and surname.
    # * `Nationalregistrationidentificationnumber` - National registration identification number. In Singapore this is known as the NRIC.
    partyidentificationtypevalues PartyIdentificationType?;
    # PartyIdentification
    identifier PartyIdentification?;
};

# Information about reactions to an Advise which is used as a basis for improvement for the Corporate Finance Services Advice. ||
# |
public type text record {
    # Text is a character string such as a finite set of characters generally in the form of words of a language. (UN/CEFACT)
    string Text?;
};

public type identifier record {
    # IdentifierValue
    value IdentifierValue?;
    # Business unit and or employee reference to the source of the financial advice
    involvedparty IdentifierIssuingAuthority?;
    # Value of the date type ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    datetime IdentifierStartDate?;
    # Value of the date type ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    datetime IdentifierEndDate?;
};

public type TaxOptimizationOk record {|
    *http:Ok;
    # body
    TaxOptimization body;
|};

# The operating unit/employee responsible for providing the advice/recommendation
public type involvedparty record {
    # Reference to the party involved in the arrangement
    party PartyReference?;
    # The role of the party in the arrangement
    partyrole PartyInvolvement?;
};

# The Capital Structuring Topic advice is one specific topic that can be included in providing Capital Structuring Topic
public type TaxOptimization record {
    # Reference to Tax Optimization Topic
    string CorporateFinanceServicesAdviceReference?;
    # Reference to Tax Optimization Topic
    string TaxOptimizationTopicReference?;
    # Information about reactions to an Advise which is used as a basis for improvement for the Corporate Finance Services Advice. ||
    # |
    text TaxOptimizationTopicType?;
    # The Capital Structuring Topic specific Business Service
    businessservice BusinessService?;
    # The operating unit/employee responsible for providing the advice/recommendation
    involvedparty BusinessUnitorEmployeeReference?;
    # The completion status once the advice/recommendation has been provided
    condition Postconditions?;
    # The completion status once the advice/recommendation has been provided
    condition Preconditions?;
    # The timing and key actions/milestones involved in providing the advice/recommendation
    schedule Schedule?;
};

# Name by which a party is known and which is usually used to identify that party. (ISO20022)
public type name record {
    # A name is a word or phrase that constitutes the distinctive designation of a person, place, thing or concept. (UN/CEFAT)
    string Name?;
};

public type party record {
    # Name by which a party is known and which is usually used to identify that party. (ISO20022)
    name PartyName?;
    # >
    # * `Person` - Human entity, as distinguished from a corporate entity (which is sometimes referred to as an 'artificial person'). ISO20022
    # * `Organisation` - Organised structure that is set up for a particular purpose. For example, a business, government body, department, charity, or financial institution. ISO20022
    partytypevalues PartyType?;
    # PartyDateTime
    datetime PartyDateTime?;
    # PartyIdentification
    partyidentification PartyIdentification?;
    # >
    # * `Individual` - 
    # * `CommunityInterestCompany` - 
    # * `CharitableIncorporatedOrganisation` - 
    # * `Co-Operative` - 
    # * `Charity` - 
    # * `GeneralPartnership` - 
    # * `LimitedLiabilityPartnership` - 
    # * `ScottishLimitedPartnership` - 
    # * `LimitedPartnership` - 
    # * `PrivateLimitedCompany` - 
    # * `PublicLimitedCompany` - 
    # * `Sole(SoleTrader)` - 
    partylegalstructuretypevalues PartyLegalStructureType?;
};

# The status of Legal Advice Facility. Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
public type status record {
    # The particular date and time point in the progression of time
    text StatusReason?;
    # The date and time when the status was set or became effective
    datetime StatusDateTime?;
    # The period during which the status is valid
    datetimeperiod StatusValidityPeriod?;
    # Reference to the customer who is involved in Legal Advice Facility. ||
    # |
    involvedparty StatusInvolvedParty?;
};

public type partyrole record {
    # Information about reactions to an Advise which is used as a basis for improvement for the Corporate Finance Services Advice. ||
    # |
    text PartyRoleType?;
    # Name by which a party is known and which is usually used to identify that party. (ISO20022)
    name PartyRoleName?;
    # PartyRoleValidityPeriod
    datetimeperiod PartyRoleValidityPeriod?;
    # >
    # * `Agreementinvolvement` - 
    # * `Partyinvolvement` - 
    # * `Arrangementinvolvement` - 
    # * `Designspecificationinvolvement` - 
    # * `Relationshipinvolvement` - 
    # * `Locationinvolvement` - 
    # * `Bankguaranteeinvolvement` - 
    partyinvolvementtypevalues PartyInvolvementType?;
};

# A selected option, identified by Parameter Type ||
# |
public type feature record {
    # A Classification value that distinguishes between Options defined within Corporate Finance Services Advice ||
    # |
    featuretypevalues FeatureType?;
    # Unique identifier for the feature
    identifier FeatureIdentification?;
    # Name by which a party is known and which is usually used to identify that party. (ISO20022)
    name FeatureName?;
    # Refers to the lifecycle of a Condition
    status FeatureLifecycleStatus?;
    # Information about reactions to an Advise which is used as a basis for improvement for the Corporate Finance Services Advice. ||
    # |
    text FeatureDescription?;
};

public type value record {
    # Data or set of data 
    #
    # - A value is the concept of worth in general that is assigned or is determined by measurement, assessment or calculation. (UN/CEFACT)
    string Value?;
};

# The timing and key actions/milestones involved in providing the advice/recommendation
public type schedule record {
    # Information about reactions to an Advise which is used as a basis for improvement for the Corporate Finance Services Advice. ||
    # |
    text ScheduleType?;
};

# The derived fee amount to be charged
public type feearrangement record {
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
    feetypevalues FeeType?;
    # Total fee charged 
    amount FeeAmount?;
    # Rate used to calculate the amount of the adjustment, allowance, charge or fee. (ISO20022)
    rate FeeRate?;
    # The period during which the fee is effective
    datetimeperiod FeeEffectivePeriod?;
    # Value of the date type ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    datetime FeeDueDate?;
    # An arranged FeeRatePlan
    feeplan FeePlan?;
    # >
    # * `Debit` - Transaction is a debt entry
    # * `Credit` - Transaction is a credit entry
    debitcreditindicatortvalues FeeCreditDebitIndicator?;
    # The combination of the different tax advisory sessions and assessments provided to the customer ||
    # |
    text FeeReason?;
    # >
    # * `Added` - Adjustment amount must be added to the total amount.
    # * `Substracted` - Adjustment amount must be substracted from the total amount.
    adjustmentdirectiontypevalues FeeDirection?;
    # >
    # * `Bornebydebtor` - All transaction charges are to be borne by the debtor.
    # * `Bornebycreditor` - All transaction charges are to be borne by the creditor.
    # * `Shared` - In a credit transfer context, means that transaction charges on the sender side are to be borne by the debtor, transaction charges on the receiver side are to be borne by the creditor. In a direct debit context, means that transaction charges on the sender side are to be borne by the creditor, transaction charges on the receiver side are to be borne by the debtor.
    # * `Followingservicelevel` - Charges are to be applied following the rules agreed in the service level and/or scheme.
    chargebearertypevalues FeeBearerType?;
};

public type branch record {
    # BranchIdentification
    identifier BranchIdentification?;
    # BranchLegalEntityIdentification
    identifier BranchLegalEntityIdentification?;
    # BranchAddress
    address BranchAddress?;
    # BranchName
    name BranchName?;
};

# Bank branch associated with the customer account/relationship for booking purposes ||
# |
public type branchlocation record {
    # Reference to the bank branch
    branch BranchReference?;
    # Reference to the location
    location LocationReference?;
};

# A Classification value that specifies the type of Budget
public type budgettype record {
    # Name by which a budget type is known and which is usually used to identify that budget type.
    name BudgetTypeName?;
    # >
    # * `OperatingBudget` - 
    # * `FinancialBudget` - 
    # * `ResourceBudget` - 
    budgettypevalues BudgetType?;
};

public type plan record {
    # PlanGoal
    goal PlanGoal?;
    # An arrangement which is specifying an estimate of costs, revenues, and resources over a specified period, reflecting a reading of future financial conditions and goals. (adapted from Business Dictionary)
    budgetarrangement PlanBudget?;
    # An action that is arranged in a plan for doing or achieving something 
    plannedaction PlannedAction?;
    # >
    # * `AdministrativePlan` - 
    # * `ManagementPlan` - 
    # * `StratgyPlan` - 
    # * `FinancialPlan` - 
    # * `DevelopmentPlan` - 
    plantypevalues PlanType?;
    # PlanValidityPeriod
    datetimeperiod PlanValidityPeriod?;
    # The combination of the different tax advisory sessions and assessments provided to the customer ||
    # |
    text PlanDescription?;
};

public type goal record {
    # >
    # * `Short-TermGoal` - 
    # * `Long-TermGoal` - 
    # * `BusinessGoal` - 
    # * `PerformanceGoal` - 
    # * `FinancialGoal` - 
    # * `OutcomeGoal` - 
    # * `SMARTGoal` - 
    goaltypevalues GoalType?;
    # The combination of the different tax advisory sessions and assessments provided to the customer ||
    # |
    text GoalDefinition?;
    # GoalName
    name GoalName?;
    # The key dates and times of Goal like Setting Data, Planning Date, Start Date, Review Date, Completion Date.
    goaldatetime GoalDateAndTime?;
    # The lifecycle status of Goal like Goal Setting, Planning, Execution, Monitoring and Evaluation, Completion or Achievement, Maintenance or Sustainment, Closure or Renewal
    goalstatus GoalStatus?;
};

public type currencycode record {
    # A code identifying a currency according to ISO-4217.
    # A currency is a system of money in general use in a particular country.
    #
    # Code allocated to a currency, by a maintenance agency, under an international identification scheme as described in the latest edition of the international standard ISO 4217 "Codes for the representation of currencies and funds". Valid currency codes are registered with the ISO 4217 Maintenance Agency, and consist of three contiguous letters. (ISO20022)
    string Currencycode?;
};

# An action that is arranged in a plan for doing or achieving something 
public type plannedaction record {
    # An action that is arranged in a plan for doing or achieving something 
    string PlannedAction?;
};

# The key dates and times of Goal like Setting Data, Planning Date, Start Date, Review Date, Completion Date.
public type goaldatetime record {
    # Value of the date type ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    datetime GoalDateAndTime?;
    # >
    # * `SettingDate` - 
    # * `PlanningDate` - 
    # * `StartDate` - 
    # * `ReviewDate` - 
    # * `CompletionDate` - 
    goaldatetimetypevalues GoalDateAndTimeType?;
};

# Term and condition to govern the use of loan product and the loan agreement in general.
public type condition record {
    # Unique identifier for the condition
    identifier ConditionIdentification?;
    # Name by which a condition is known and which is usually used to identify that condition
    name ConditionName?;
    # The period during which the condition is valid
    datetimeperiod ConditionValidityPeriod?;
    # Value of the date type ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    datetime ConditionDateAndTime?;
    # The status of the condition
    status ConditionStatus?;
};

# The product features/services available with a financical facility
public type ServiceFee record {
    # The record of applied fees for the specialist advice
    string FeeApplicationRecord?;
    # A record of an applied fee
    feetransaction FeeTransaction?;
    # The combination of the different tax advisory sessions and assessments provided to the customer ||
    # |
    text FeeTransactionDescription?;
    # A record of an applied fee
    feetransaction FeeTransactionType?;
    # The derived fee amount to be charged
    feearrangement FeeTransactionCharge?;
};

# A record of engaging a product tax specialist to liaise with the customer
public type task record {
    # The task description or identifier
    string Task?;
};

public type ServiceFeeOk record {|
    *http:Ok;
    # body
    ServiceFee body;
|};

# The lifecycle status of Goal like Goal Setting, Planning, Execution, Monitoring and Evaluation, Completion or Achievement, Maintenance or Sustainment, Closure or Renewal
public type goalstatus record {
    # The current status of the goal
    status GoalStatus?;
    # >
    # * `Setting` - 
    # * `Planning` - 
    # * `Execution` - 
    # * `MonitoringAndEvaluation` - 
    # * `CompletionOrAchievement` - 
    # * `MaintenanceOrSustainment` - 
    # * `ClosureOrRenewal` - 
    goalstatustypevalues GoalStatusType?;
};

# The document reference for associated documents such as disclosures and acceptance records ||
# |
public type documentdirectoryentry record {
    # Identification allowing the retrieval of a document from a Document Directory
    string DocumentDirectoryEntryIdentification?;
};

# An arrangement which is specifying an estimate of costs, revenues, and resources over a specified period, reflecting a reading of future financial conditions and goals. (adapted from Business Dictionary)
public type budgetarrangement record {
    # A Classification value that specifies the type of Budget
    budgettype BudgetType?;
    # Total fee charged 
    amount BudgetAmount?;
};

# Rate used to calculate the amount of the adjustment, allowance, charge or fee. (ISO20022)
public type rate record {
    # The numeric value of the rate
    value RateValue?;
    # The combination of the different tax advisory sessions and assessments provided to the customer ||
    # |
    text RateUnit?;
    # The period during which the rate is applicable
    datetimeperiod RatePeriod?;
    # The combination of the different tax advisory sessions and assessments provided to the customer ||
    # |
    text RateCapitalUnit?;
};

# A record of an applied fee
public type feetransaction record {
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
    feetypevalues AppliedFeeType?;
    # Total fee charged 
    amount AccruedFeeAmount?;
    # Total fee charged 
    amount AppliedFeeAmount?;
};

# Total fee charged 
public type amount record {
    # The numeric value of the amount
    value AmountValue?;
    # The currency code for the amount
    currencycode AmountCurrency?;
    # The combination of the different tax advisory sessions and assessments provided to the customer ||
    # |
    text DecimalPointPosition?;
    # >
    # * `Principal` - 
    # * `Actual` - Actual amount.
    # * `Estimated` - Estimated amount (the final amount could be above or below).
    # * `Maximum` - Maximum amount (the final amount must be less or equal).
    # * `Default` - Default amount.
    # * `Replacement` - Replacement amount.
    # * `Incremental` - Incremental amount for reservation.
    # * `Decremental` - Decremental amount for reservation.
    # * `Reserved` - Reserved or updated reserved amount for reservation.
    # * `Available` - 
    # * `Used` - 
    # * `DuePayable` - 
    # * `Minimum` - 
    # * `Open` - The amount is open.(ISO20022)
    # * `Unknown` - The amount is unkown.(ISO20022)
    # * `Fixed` - The amount represents a fixed value.(ISO20022)
    amounttypevalues AmountType?;
};

public type address record {
    # >
    # * `PostalAddress` - 
    # * `GeolocationAddress` - 
    # * `LatitudeAddress` - 
    # * `LongitudeAddress` - 
    # * `ElectronicAddress` - 
    addresstypevalues AddressType?;
    # LocationReference
    location LocationReference?;
};

# File of consolidated notes, forms and documents for the advisory sessions ||
# |
public type workproduct record {
    # >
    # * `Document` - 
    # * `WorkingPaper` - 
    # * `ActivityLog` - 
    # * `Form` - 
    # * `File` - File of consolidated notes, evaluations and recommendations for the work task
    # * `MeetingSchedule` - 
    # * `MeetingMinute` - 
    workproducttypevalues WorkProductType?;
    # Unique identifier for the work product
    identifier WorkProductIdentifoication?;
};

# An arranged FeeRatePlan
public type feeplan record {
    # Name of the fee plan
    name FeePlanName?;
    # >
    # * `StandardFeePlan` - 
    # * `FinalFeePlan` - 
    feeplantypevalues FeePlanType?;
    # The plan details for the fee arrangement
    plan FeePlan?;
};

public type location record {
    # The combination of the different tax advisory sessions and assessments provided to the customer ||
    # |
    text LocationDescription?;
    # Value of the date type ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    datetime LocationDateTime?;
    # LocationStatus
    status LocationStatus?;
    # >
    # * `Continent` - 
    # * `Country` - 
    # * `State` - 
    # * `District` - 
    # * `Province` - 
    # * `Town` - 
    # * `City` - 
    # * `Region` - 
    geographicalareatypevalues LocationType?;
    # The combination of the different tax advisory sessions and assessments provided to the customer ||
    # |
    text LocationZoningType?;
    # The combination of the different tax advisory sessions and assessments provided to the customer ||
    # |
    text LocationNeighborhoodType?;
    # The combination of the different tax advisory sessions and assessments provided to the customer ||
    # |
    text LocationConstructionType?;
    # The combination of the different tax advisory sessions and assessments provided to the customer ||
    # |
    text LocationOccupancyType?;
    # LocationValue
    value LocationValue?;
    # The combination of the different tax advisory sessions and assessments provided to the customer ||
    # |
    text LocationCapacity?;
    # LocationIdentification
    identifier LocationIdentification?;
    # LocationAddress
    address LocationAddress?;
    # LocationName
    name LocationName?;
    # The combination of the different tax advisory sessions and assessments provided to the customer ||
    # |
    text LocationTimeZone?;
};

# The Legal Advisory Arrangement specific Business Service
public type businessservice record {
    # The type of business service provided
    businessservicetypevalues BusinessServiceType?;
};

# The identifier of product e.g. ISIN Code.
public type productidentification record {
    # The identifier of Condition
    identifier ProductIdentification?;
    # >
    # * `ISINCode` - 
    # * `PackageCode` - 
    # * `Buyersitemnumber` - Product identifier assigned by the buyer.
    # * `Commercialdescriptioncodename` - A code to identify a product based on applicable commercial conditions.
    # * `EAN` - The unique EAN (European Article Number) code.
    # * `Harmonizedtariffcodename` - Classification of goods as developed by the Customs Cooperation council.
    # * `Manufacturersitemnumber` - Product identifier as assigned by the manufacturer.
    # * `Modelnumber` - Reference number assigned by the manufacturer to differentiate variations in similar products in a class or group.
    # * `Partnumber` - Reference assigned by the manufacturer to a product part.
    # * `Quotacategory` - Product identifier used by the retail industry.
    # * `Stylenumber` - Identification of the style of a product.
    # * `Suppliersitemnumber` - Number assigned to an article by the supplier of that article.
    # * `Universalproductcode` - Number assigned to a manufacturer's product by the Product Code Council.
    productidentificationtypevalues ProductIdentificationType?;
};

public type businessservicetypevalues record {
    # Businessservicetypevalues
    string Businessservicetypevalues?;
};

# Refers to the lifecycle of a product (e.g., initiated, announced, active, obsolete, withdrawn).
public type productstatus record {
    # The status of Legal Advice Facility. Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    status ProductStatus?;
    # >
    # * `Initiated` - 
    # * `Announced` - 
    # * `Sold` - 
    # * `Obsolete` - 
    # * `Active` - 
    productstatustypevalues ProductStatusType?;
};

# Reference to the product which is linked to Legal Advice Facility. Product_x000D_
# |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
public type bankingproduct record {
    # The identifier of product e.g. ISIN Code.
    productidentification ProductIdentification?;
    # >
    # * `LoanProduct` - 
    # * `CurrentAccountProduct` - 
    # * `SavingAccountProduct` - 
    # * `BrokeredProduct` - 
    # * `TermDepositProduct` - 
    bankingproducttypevalues ProductType?;
    # Refers to the lifecycle of a product (e.g., initiated, announced, active, obsolete, withdrawn).
    productstatus ProductLifecycleStatus?;
    # The particular date and time point in the progression of time
    text ProductPriority?;
    # The particular date and time point in the progression of time
    text ProductDescription?;
    # The particular date and time point in the progression of time
    text ProductVersion?;
    # Name by which a party is known and which is usually used to identify that party. (ISO20022)
    name ProductName?;
};

# Reference to the one or more production transactions isolated by the fraud evaluation tests
public type ProductionTransaction record {
    # TransactionIdentification
    Identifier TransactionIdentification?;
    # The Date that the transaction has occurred or is planned to occur.
    # A characteristic of transaction which refers to the LifecycleDate of transaction (e.g., initiated date, executed date, fulfillment date). 
    Transactiondatetime TransactionDate?;
    # >
    # * `FinancialTransaction` - 
    # * `BusinessTransaction` - 
    # * `BankingTransaction` - 
    # * `AccountingTransaction` - 
    # * `BookingTransaction` - 
    # * `AllocationTransaction` - 
    # * `DeliveryTransaction` - 
    # * `ProductionTransaction` - 
    Transactiontypevalues TransactionType?;
    # A detailed explanation or commentary of transaction.
    string TransactionDescription?;
    # A characteristic of transaction which refers to the LifecycleStatus of transaction (e.g., initiated, executed, confirmed, cancelled, etc.) 
    Transactionstatus TransactionStatus?;
    # TransactionName
    Name TransactionName?;
};

# An arranged InterestRatePlan
public type Rateplan record {
    # RatePlanName
    string RatePlanName?;
    # >
    # * `StandardRatePlan` - 
    # * `AdjustmentRatePlan` - 
    # * `FinalRatePlan` - 
    Rateplantypevalues RatePlanType?;
    # RatePlan
    string RatePlan?;
};

# Reference to the Financial Facility related to Account Reconciliation Procedure
public type FinancialFacility record {
    # A production or operational capacity to perform a business function for delivering a banking product or service
    #
    # A functional classification of banking product that provides ongoing capacity to deliver financial services (e.g. loan service, payment service)
    string FinancialFacility?;
};

# Reference to Document Retrieval Function
public type Function record {
    # A kind of action.
    #
    # Functions as Behaviour Qualifier: The collection of operational services/functions offered by the operational facility.
    string Function?;
};

# Current status of the limit.
public type Limitstatus record {
    # LimitStatus
    Status LimitStatus?;
    # >
    # * `Enabled` - Limit is currently in effect.
    # * `Disabled` - Limit is not currently in effect.
    # * `Deleted` - Limit has been deleted or suspended.
    # * `Requested` - Limit has been asked for and is not yet enabled.
    Limitstatustypevalues LimitStatusType?;
};

# Current position against limits
public type LimitArrangement record {
    # >
    # * `Multilateral` - Limit is a maximum amount value applied to, or by, a participant to a set of counterparties. The multilateral limit is taken into account by the transaction administrator to contain the risk in the system. With the help of the multilateral limit, the direct participant restricts the use of liquidity when clearing payments with all other direct participants for which no bilateral limit is set.
    # * `Bilateral` - Limit is applied by one party to a specific counterparty, and corresponds to the maximum amount of traffic party setting the limit can send to that counterparty. The limit can be expressed as a debit or a credit limit. With the help of a bilateral limit, the direct participant restricts the use of liquidity when clearing payments with another direct participant.
    # * `Netbilateral` - Limit is applied by one party to a specific counterparty, and corresponds to the maximum net balance acceptable by the party that is setting the limit. The limit is calculated as an arithmetic sum in value of the bilateral flows exchanged between the two parties. The net bilateral limit can be expressed as a debit or a credit balance.
    # * `Indirectbilateral` - Limit is a maximum value set by a direct participant with respect to its indirect participant. The limit represents the maximum amount the indirect participant can use to settle its operations.
    # * `Global` - Maximum value set by either the transaction administrator or by a member for the participation of a member in the system. The global limit may be expressed as a credit or debit maximum value and is taken into account by the transaction administrator when processing transaction inside the system. With the help of the global limit, the direct participant may limit the use of liquidity when clearing specific type of payments.
    # * `Mandatorybilateral` - Mandatory part of the bilateral limit applied by one party to a specific counterparty, and corresponds to the maximum amount of traffic party setting the limit can send to that counterparty. The limit can be expressed as a debit or a credit limit. With the help of a bilateral limit, the direct participant restricts the use of liquidity when clearing payments with another direct participant.
    # * `Discretionarybilateral` - Discretionary part of the bilateral limit applied by one party to a specific counterparty, and corresponds to the maximum amount of traffic party setting the limit can send to that counterparty. The limit can be expressed as a debit or a credit limit. With the help of a bilateral limit, the direct participant restricts the use of liquidity when clearing payments with another direct participant.
    # * `Directdebit` - Limit not to be exceeded for direct debit operations.
    # * `Singlecustomerdirectdebit` - Single direct debit payment limit not to be exceeded by any single direct debit transaction by a customer.
    # * `Singlefinancialinstitutiondirectdebit` - Single direct debit payment limit not to be exceeded by any single direct debit transaction initiated by a financial institution.
    # * `Totaldailycustomerdirectdebit` - Total daily payments limit for customer direct debits not to be exceeded by the total of all direct debit transactions initiated by customers.
    # * `Totaldailyfinancialinstitutiondirectdebit` - Total daily payments limit for financial institutions direct debits not to be exceeded by the total of all direct debit transactions initiated by financial institutions.
    # * `Autocollateralisation` - Limit is related to a credit operation that is or can be triggered when a buyer does not have a sufficient amount of money to settle a securities transaction in order to improve its cash position for the next settlement cycle. The credit provided can be secured using securities already held by the buyer (“collateral stocks”) or the securities that are being purchased (“collateral flows”).
    # * `Unsecuredcredit` - Limit is related to a cap amount granted by a national central bank or a settlement bank, but generally unsecured outside of the market infrastructure.
    # * `Externalguarantee` - Limit is related to a cap amount granted by a national central bank or a settlement bank.
    Limittypevalues LimitType?;
    # The currency for the account
    Currencycode LimitCurrency?;
    # Period of time during which the status is valid.
    Datetimeperiod LimitValidityPeriod?;
    # Amount of money of the limit, expressed in a currency. (ISO20022)
    Amount LimitAmount?;
    # Current status of the limit.
    Limitstatus LimitStatus?;
    # Specifies that the limit is a percentage of a related amount. (ISO20022)
    Rate LimitRate?;
    # Specifies the periodicity linked to a limit for example the periodicity can indicate that the limit can be reached daily or monthly. (ISO20022)
    Frequency LimitFrequency?;
    # An identifier that allows to uniquely refer to an instance of a transaction.
    Identifier LimitIdentification?;
    # The date when the identifier became valid.
    Datetime LimitStartDatetime?;
    # >
    # * `Debit` - Transaction is a debt entry
    # * `Credit` - Transaction is a credit entry
    Debitcreditindicatortvalues LimitCreditDebitIndicator?;
    # >
    # * `Principal` - 
    # * `Actual` - Actual amount.
    # * `Estimated` - Estimated amount (the final amount could be above or below).
    # * `Maximum` - Maximum amount (the final amount must be less or equal).
    # * `Default` - Default amount.
    # * `Replacement` - Replacement amount.
    # * `Incremental` - Incremental amount for reservation.
    # * `Decremental` - Decremental amount for reservation.
    # * `Reserved` - Reserved or updated reserved amount for reservation.
    # * `Available` - 
    # * `Used` - 
    # * `DuePayable` - 
    # * `Minimum` - 
    # * `Open` - The amount is open.(ISO20022)
    # * `Unknown` - The amount is unkown.(ISO20022)
    # * `Fixed` - The amount represents a fixed value.(ISO20022)
    Amounttypevalues LimitAmountType?;
    # Date on which the agreement was signed by all parties. (ISO20022)
    Date LoanOriginationDate?;
    # Date on which the agreement was signed by all parties. (ISO20022)
    Date LoanMaturityDate?;
    # Date on which the agreement was signed by all parties. (ISO20022)
    Date LoanEndDate?;
    # Amount of money of the limit, expressed in a currency. (ISO20022)
    Amount LoanAmount?;
    # >
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - Arrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    Arrangementtypevalues LoanArrangementType?;
    # ArrangementAction
    Action ArrangementAction?;
    # The date when the identifier became valid.
    Datetime ArrangementStartDate?;
    # The date when the identifier became valid.
    Datetime ArrangementEndDate?;
    # A characteristic of arrangement which refers to the LifecycleStatus of arrangement (e.g., requested, proposed, offered, accepted, cancelled, terminated, fulfilled, etc.)
    Arrangementstatus ArrangementStatus?;
    # ArrangementSubjectMatter
    Subject ArrangementSubjectMatter?;
    # >
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - Arrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    Arrangementtypevalues Arrangementtype?;
    # An identifier that allows to uniquely refer to an instance of a transaction.
    Identifier ArrangementIdentification?;
    # >
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - Arrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    Arrangementtypevalues SavingsAccountArrangementType?;
    # Reference to the product feature applied in this arrangement 
    Productfeaturetype SavingsAccountArrangementProductFeatureType?;
    # >
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - Arrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    Arrangementtypevalues ProductArrangementType?;
    # >
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - Arrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    Arrangementtypevalues CurrentAccountArrangementType?;
    # Reference to the product feature applied in this arrangement 
    Productfeaturetype CurrentAccountArrangementProductFeatureType?;
    # >
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - Arrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    Arrangementtypevalues TermDepositArrangementType?;
    # Reference to the product feature applied in this arrangement 
    Productfeaturetype TermDepositArrangementProductFeatureType?;
    # The date when the identifier became valid.
    Datetime TermDepositMaturityDate?;
    # The date when the identifier became valid.
    Datetime TermDepositOpenDate?;
    # Amount of money of the limit, expressed in a currency. (ISO20022)
    Amount TermDepositAmount?;
    # TermDepositDuration
    Duration TermDepositDuration?;
    # The Period for which the TermDepositAmount needs ti stay deposited with the Bank
    string DepositTerm?;
    # >
    # * `CashDeposit` - Amount of money representing a value paid by a debtor to an agent bank. (ISO20022)
    # * `SecurityDeposit` - 
    # * `PawnDeposit` - 
    # * `Call/NoticeDeposit` - 
    # * `FixedTermDeposit` - 
    # * `DemandDeposit` - A demand deposit account is essentially a checking account in which you can withdraw funds at any time. (Investopedia)
    # https://www.investopedia.com/terms/d/demanddeposit.asp#:~:text=our%20editorial%20policies-,What%20Is%20a%20Demand%20Deposit%3F,are%20common%20types%20of%20DDAs.
    # * `TimeDeposit` - Time deposits are those with a fixed time and usually pay a fixed interest rate (Investopedia)
    # * `CardDeposit` - 
    Deposittypevalues DepositType?;
    # A limit imposed to the facility to deposit funds
    #
    # e.g. minimum deposit of 500€, maximum of 5000 per year, maximum balance of 500 000€This is the actual "value" that has to be used in "the algorithm depicted by the "type". 
    Limitarrangement DepositLimit?;
    # Type of limit imposed on a deposit facility
    #
    # e.g. maximum amount per deposit or per periodThis is "the algorithm"
    string DepositLimitType?;
    # Amount of money of the limit, expressed in a currency. (ISO20022)
    Amount DepositAmount?;
    # The date when the identifier became valid.
    Datetime DepositDatetime?;
    # DepositDatetimeType
    string DepositDatetimeType?;
    # >
    # * `Principal` - 
    # * `Actual` - Actual amount.
    # * `Estimated` - Estimated amount (the final amount could be above or below).
    # * `Maximum` - Maximum amount (the final amount must be less or equal).
    # * `Default` - Default amount.
    # * `Replacement` - Replacement amount.
    # * `Incremental` - Incremental amount for reservation.
    # * `Decremental` - Decremental amount for reservation.
    # * `Reserved` - Reserved or updated reserved amount for reservation.
    # * `Available` - 
    # * `Used` - 
    # * `DuePayable` - 
    # * `Minimum` - 
    # * `Open` - The amount is open.(ISO20022)
    # * `Unknown` - The amount is unkown.(ISO20022)
    # * `Fixed` - The amount represents a fixed value.(ISO20022)
    Amounttypevalues DepositAmountType?;
    # DepositInterest
    Interestarrangement DepositInterest?;
    # DepositDuration
    Duration DepositDuration?;
    # Specifies that the limit is a percentage of a related amount. (ISO20022)
    Rate DepositRate?;
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
    Paymentservicetypevalues ServiceType?;
    # Key dates related to the payment. 
    Paymentdatetime PaymentDate?;
    # Period of time during which the status is valid.
    Datetimeperiod PaymentPeriod?;
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
    Paymentpurposevalues PaymentPurpose?;
    # Amount of the payment (arranged to be paid)
    Paymentamountandcurrency PaymentAmountAndCurrency?;
    # >
    # * `Cheque` - Written order to a bank to pay a certain amount of money from one person to another person.
    # * `Credittransfer` - Transfer of an amount of money in the books of the account servicer.
    # * `Directdebit` - Collection of an amount of money from the debtor's bank account by the creditor. The amount of money and dates of collections may vary.
    # * `Transferadvice` - Transfer of an amount of money in the books of the account servicer. An advice should be sent back to the account owner.
    # * `Direct` - Direct method.
    # * `Classical` - Classical method.
    Paymentmethodtypevalues PaymentMethod?;
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
    # * `Documentarycredit` - Transaction is a documentary credit from one banker to another, authorising the payment of a specified sum of money to the person named in the document, based on specified conditions.
    # * `Billofexchange` - Transaction is a written order from a drawer to a drawee to pay a specified sum of money upon demand, or on a specified date, to the drawer or to a third party specified by the drawer. A bill of exchange is also called a draft.
    # * `Collection` - Transaction is a collection. A collection is the act of sending a cheque, bill of exchange or another financial instrument to the prospective financial institution for payment.
    # * `Cashmanagementtransfer` - Transaction is a general cash management instruction.
    # * `Topaccount` - Transaction is a cash management instruction, requesting to top the account of the debtor above a certain floor amount. The floor amount, if not pre-agreed by the parties involved, may be specified.
    # * `Zerobalanceaccount` - Transaction is a cash management instruction, requesting to zero balance the account of the debtor.
    # * `Standingfacilities` - Payment is linked to overnight deposits and the marginal lending facility.
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
    # * `Taxpayment` - Transaction is a payment of taxes.
    # * `Overnightdeposit` - Transaction is linked to an overnight deposit.
    # * `Marginallending` - Transaction is linked to the marginal lending facility.
    # * `Other` - Specifies that a proprietary code must be indicated.
    # * `Upfront` - Transaction is an initial payment made by one of the counterparties  either to bring a transaction to fair value or for any other reason that may be the cause of an off-market transaction.
    # * `Unwind` - Transaction is the final settlement payment made when a transaction is unwound prior to its end date or a payment that may result due to the full termination of derivative transaction(s).
    # * `Principalexchange` - Transaction is an exchange of notional values for cross-currency swaps.
    Paymenttypevalues PaymentType?;
    # >
    # * `Paymentondelivery` - Code for payment on delivery.
    # * `Endofmonthofdelivery` - Code for payment at end of month of delivery.
    # * `Endofperiodafterdelivery` - Code for payment at end of period after delivery.
    # * `Endofperiodafterendofdeliverymonth` - Code for payment at end of period after end of month of delivery.
    # * `Paymentonreceiptofinvoice` - Code for payment on receipt of invoice.
    # * `Endofperiodafterendofreceiptmonth` - Code for payment at end of period after end of month of receipt of invoice.
    # * `Endofperiodafterreceipt` - Code for payment at end of period after receipt of invoice.
    # * `Endofmonthofreceipt` - Code for payment at end of month of receipt of invoice.
    # * `Endofperiodaftermatch` - Code for payment at end of period after match or mismatch acceptance.
    # * `Endofperiodaftershipmentdate` - Payment at end of period after shipment date.
    # * `Endofperiodafterpurchaseorderdate` - Payment at end of period after purchase order date.
    # * `Endofperiodafterbaselineestablishment` - Payment at end of period after baseline establishment date.
    # * `Endofperiodafterinvoicedate` - Payment at end of period after invoice date.
    Paymenttimevalues PaymentTime?;
    # >
    # * `Fax` - Remittance advice information must be faxed.
    # * `Electronicdatainterchange` - Remittance advice information must be sent through Electronic Data Interchange (EDI).
    # * `Uniformresourceidentifier` - Remittance advice information needs to be sent to a Uniform Resource Identifier (URI). URI is a compact string of characters that uniquely identify an abstract or physical resource. URI's are the super-set of identifiers, such as URLs, email addresses, ftp sites, etc, and as such, provide the syntax for all of the identification schemes.
    # * `Email` - Remittance advice information must be sent through e-mail.
    # * `Post` - Remittance advice information must be sent through postal services.
    # * `SMS` - Remittance advice information must be sent through by phone as a short message service (SMS).
    Remittancedeliverymethodtypevalues RemittanceDeliveryMethod?;
    # Address to which the first agent is to send the remittance information. (ISO20022)
    Contactpoint RemittanceLocation?;
    # PaymentIdentification
    Paymentidentification PaymentIdentification?;
    # Target dates for account restructuring/set-up added to the Account Recovery Case Resolution Schedule
    Schedule PaymentSchedule?;
    # Specifies the periodicity linked to a limit for example the periodicity can indicate that the limit can be reached daily or monthly. (ISO20022)
    Frequency PaymentFrequency?;
    # Payment reference (sometimes called remittance information or payment description) can appear at both debtor and creditor levels, but with slightly different roles:
    #
    # At the Debtor (Payer) Level 
    # The debtor provides the reference/narrative when initiating the payment. 
    # Purpose: to explain what the payment is for (e.g., Invoice 1234, August rent). 
    # This is usually optional, but very useful for reconciliation.
    #
    #
    # At the Creditor (Payee) Level 
    # The same reference is transmitted along with the payment message and shown to the creditor when funds are received. 
    # Purpose: allows the creditor to match the payment to the correct invoice, order, or account.
    string PaymentDescription?;
    # The date when the identifier became valid.
    Datetime CreditFacilityDataTime?;
    # >
    # * `Revolving` - 
    # * `FixedAmount` - 
    # * `Decreasing` - 
    Creditfacilitytypevalues CreditFacilityType?;
    # >
    # * `AvailabilityCommission` - 
    Creditfacilityratetypevalues CreditFacilityRateType?;
    # An identifier that allows to uniquely refer to an instance of a transaction.
    Identifier CreditFacilityNumber?;
    # Amount of money of the limit, expressed in a currency. (ISO20022)
    Amount CreditFacilityAmount?;
    # >
    # * `PremiumArrangement` - How much, how often, and how premiums are paid.
    # * `CoverageArrangement` - Risks/events insured against and the scope/limits of protection.
    # * `ExclusionArrangement` - Situations where the insurer will not pay.
    # * `ClaimArrangement` - How claims are submitted, documents needed, and payout procedures.
    # * `TerminationArrangement` - Conditions for ending the policy.
    # * `RenewalArrangement` - Rules for extending or continuing the policy.
    # * `BenefitArrangement` - How and to whom benefits are paid.
    # * `Legal&RegulatoryArrangement` - Compliance with laws and dispute resolution mechanisms.
    # * `PaymentArrangement` - Specifies how and when benefits are paid e.g., lump sum, scheduled installments, or direct payment to service providers.
    # * `ServiceArrangement` - Covers non-monetary benefits such as the provision of funeral services, transport of remains, or repatriation, usually via contracted service providers.
    Insurancearrangementtypevalues FuneralPolicyArrangementType?;
};

# A limit imposed to the facility to deposit funds
#
# e.g. minimum deposit of 500€, maximum of 5000 per year, maximum balance of 500 000€This is the actual "value" that has to be used in "the algorithm depicted by the "type". 
public type Limitarrangement record {
    # An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    string LimitArrangement?;
};

public type Interestarrangement record {
    # >
    # * `Fixed` - Indicates that the type of interest is fixed.
    # * `Floatingratenote` - Indicates that the type of interest is a floating rate note.
    # * `Dualbasis` - Indicates that the type of interest is a dual basis.
    # * `Index` - Indicates that the type of interest is index.
    # * `Discounted` - Indicates that the type of interest is discounted.
    # * `Zerocoupon` - Indicates that the type of interest is a zero coupon.
    # * `Exinterest` - Indicates deal price excluding accrued interest.
    # * `Cuminterest` - Indicates deal price including accrued interest.
    Interesttypevalues InterestType?;
    # Specifies that the limit is a percentage of a related amount. (ISO20022)
    Rate InterestRate?;
    # InterestDefinition
    string InterestDefinition?;
    # >
    # * `Fixed` - Rate is fixed.
    # * `Forfeit` - No specific repurchase rate applies to the transaction Repo, only a forfeit.
    # * `Variable` - Rate is variable.
    # * `Scheduled` - Rate of the scheduled payment.
    # * `Unscheduled` - Rate of the unscheduled payment.
    # * `Discount` - Interest rate type is Discount.
    # * `Fixedrateunderlyingexposureforlife` - Interest rate type is Fixed rate underlying exposure (for life).
    # * `Fixedrateunderlyingexposurewithcompulsoryfutureswitchtofloating` - Interest rate type is Fixed rate underlying exposure with compulsory future switch to floating.
    # * `Fixedwithfutureperiodicresets` - Interest rate type is Fixed with future periodic resets.
    # * `Floatinglinkedtoindex` - Interest rate type is Floating rate underlying exposure linked to one index that will revert to another index in the future.
    # * `Floatingrateunderlyingexposureforlife` - Interest rate type is Floating rate underlying exposure (for life).
    # * `Floatingrateunderlyingexposurewithcap` - Interest rate type is Floating rate underlying exposure with cap.
    # * `Floatingrateunderlyingexposurewithfloor` - Interest rate type is Floating rate underlying exposure with floor.
    # * `Floatingrateunderlyingexposurewithfloorandcap` - Interest rate type is Floating rate underlying exposure with both floor and cap.
    # * `Modular` - Interest rate type is Modular.
    # * `Obligorswapped` - Interest rate type is Obligor Swapped.
    # * `Other` - Any other type of interest rate that can be applied.
    # * `Swicthoptionality` - Interest rate type is Switch Optionality.
    Interestratetypevalues InterestRateType?;
    # Period of time during which the status is valid.
    Datetimeperiod InterestPeriod?;
    # An arranged InterestRatePlan
    Rateplan InterestRatePlan?;
    # Target dates for account restructuring/set-up added to the Account Recovery Case Resolution Schedule
    Schedule InterestSchedule?;
    # Date on which the agreement was signed by all parties. (ISO20022)
    Date LoanOriginationDate?;
    # Date on which the agreement was signed by all parties. (ISO20022)
    Date LoanMaturityDate?;
    # Date on which the agreement was signed by all parties. (ISO20022)
    Date LoanEndDate?;
    # Amount of money of the limit, expressed in a currency. (ISO20022)
    Amount LoanAmount?;
    # >
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - Arrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    Arrangementtypevalues LoanArrangementType?;
    # ArrangementAction
    Action ArrangementAction?;
    # The date when the identifier became valid.
    Datetime ArrangementStartDate?;
    # The date when the identifier became valid.
    Datetime ArrangementEndDate?;
    # A characteristic of arrangement which refers to the LifecycleStatus of arrangement (e.g., requested, proposed, offered, accepted, cancelled, terminated, fulfilled, etc.)
    Arrangementstatus ArrangementStatus?;
    # ArrangementSubjectMatter
    Subject ArrangementSubjectMatter?;
    # >
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - Arrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    Arrangementtypevalues Arrangementtype?;
    # An identifier that allows to uniquely refer to an instance of a transaction.
    Identifier ArrangementIdentification?;
    # An identifier that allows to uniquely refer to an instance of a transaction.
    Identifier PaymentCardArrangementIdentifier?;
    # >
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - Arrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    Arrangementtypevalues CardPaymentArrangementType?;
    # >
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - Arrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    Arrangementtypevalues SavingsAccountArrangementType?;
    # Reference to the product feature applied in this arrangement 
    Productfeaturetype SavingsAccountArrangementProductFeatureType?;
    # >
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - Arrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    Arrangementtypevalues CurrentAccountArrangementType?;
    # Reference to the product feature applied in this arrangement 
    Productfeaturetype CurrentAccountArrangementProductFeatureType?;
    # >
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - Arrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    Arrangementtypevalues ProductArrangementType?;
    # >
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - Arrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    Arrangementtypevalues TermDepositArrangementType?;
    # Reference to the product feature applied in this arrangement 
    Productfeaturetype TermDepositArrangementProductFeatureType?;
    # The date when the identifier became valid.
    Datetime TermDepositMaturityDate?;
    # The date when the identifier became valid.
    Datetime TermDepositOpenDate?;
    # Amount of money of the limit, expressed in a currency. (ISO20022)
    Amount TermDepositAmount?;
    # TermDepositDuration
    Duration TermDepositDuration?;
    # The Period for which the TermDepositAmount needs ti stay deposited with the Bank
    string DepositTerm?;
    # VirtualAccountArrangementType
    string VirtualAccountArrangementType?;
    # >
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - Arrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    Arrangementtypevalues BankPlanArrangementType?;
    # The date when the identifier became valid.
    Datetime CreditFacilityDataTime?;
    # >
    # * `Revolving` - 
    # * `FixedAmount` - 
    # * `Decreasing` - 
    Creditfacilitytypevalues CreditFacilityType?;
    # >
    # * `AvailabilityCommission` - 
    Creditfacilityratetypevalues CreditFacilityRateType?;
    # An identifier that allows to uniquely refer to an instance of a transaction.
    Identifier CreditFacilityNumber?;
    # Amount of money of the limit, expressed in a currency. (ISO20022)
    Amount CreditFacilityAmount?;
};

# The calendar of Supplier Agreement
public type Calendar record {
    # >
    # * `UKCalendar` - 
    # * `ChineseCalendar` - 
    Calendartypevalues CalendarType?;
    # The name of Condition
    Name CalendarName?;
};

# A Classification that distinguishes between the regularity domains of Supplier Agreement
public type Rulesettype record {
    # The name of Condition
    Name RuleSetTypeName?;
    # >
    # * `Policy` - Rule that governs business execution.
    #
    # The set of basic principles and associated guidelines, formulated and enforced by the governing body of an organization, to direct and limit its actions in pursuit of long-term goals. (Business Dictionary)
    #
    # * `Regulation` - A rule used to carry out a law (FIBO)
    #
    # Business Dictionary: a rule (with or without the coercive power of law) employed in controlling, directing, or managing an activity, organization, or system. 
    #
    # The set of rules and legislation governing certain actions. 
    # https://financial-dictionary.thefreedictionary.com/Regulatory
    # * `Law` - A binding rule that the courts will enforce.
    # A system of rules and guidelines which are enforced through social institutions to govern behavior. (FIBO)
    #
    # * `Guideline` - A recommended practice (adapted from Business Dictionary)
    # A general rule, principle, or piece of advice.
    # * `Criterion` - A principle or standard by which something may be judged or decided.
    #
    # Read more: http://www.businessdictionary.com/definition/criterion.html
    # * `Standard` - A rule considered by an authority or by general consent as a basis of comparison
    Rulesettypevalues RuleSetType?;
};

# accessarrangement
public type accessarrangement record {
};

# accountinvolvement
public type accountinvolvement record {
};

# accountrestriction
public type accountrestriction record {
};

# authorization
public type authorization record {
};

# billpaymandate
public type billpaymandate record {
};

# billpaymandatefacilityarrangement
public type billpaymandatefacilityarrangement record {
};

# cardnetwork
public type cardnetwork record {
};

# cardpaymentagreement
public type cardpaymentagreement record {
};

# cardpaymentauthorization
public type cardpaymentauthorization record {
};

# cardpaymenttransaction
public type cardpaymenttransaction record {
};

# cardpaymenttransactioninvolvement
public type cardpaymenttransactioninvolvement record {
};

# collateralasset
public type collateralasset record {
};

# collateralassetallocation
public type collateralassetallocation record {
};

# collateralassetvaluation
public type collateralassetvaluation record {
};

# customercreditratingassessment
public type customercreditratingassessment record {
};

# directdebitmandate
public type directdebitmandate record {
};

# directdebitmandatearrangement
public type directdebitmandatearrangement record {
};

# Interest
public type Interest record {
};

# loanarrangement
public type loanarrangement record {
};

# loanproduct
public type loanproduct record {
};

# marketordertransaction
public type marketordertransaction record {
};

# partyobligationorentitlement
public type partyobligationorentitlement record {
};

# paymentarrangement
public type paymentarrangement record {
};

# paymentinstruction
public type paymentinstruction record {
};

# paymenttransaction
public type paymenttransaction record {
};

# paymenttransactionstatus
public type paymenttransactionstatus record {
};

# procedure
public type procedure record {
};

# statement
public type statement record {
};

# systemconfigurationoption
public type systemconfigurationoption record {
};

# taxarrangement
public type taxarrangement record {
};

# workstep
public type workstep record {
};
