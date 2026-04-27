import ballerina/http;
import financial.bian.attribute.groups.common as common;

# Identifies a nation with its own government (ISO 3166).
public type Countrycode record {
    # Code to identify a country, a dependency, or another area of particular geopolitical interest, on the basis of country names obtained from the United Nations (ISO 3166, Alpha-2 code).
    string Countrycode?;
};

public type CurrencyOk record {|
    *http:Ok;
    # body
    Currency body;
|};

# Description.
public type FinancialInstrumentDirectoryEntryOk record {|
    *http:Ok;
    # body
    FinancialInstrumentDirectoryEntry body;
|};

public type WarrantOk record {|
    *http:Ok;
    # body
    Warrant body;
|};

# The Futures properties that represent a discrete aspect of the Futures Instrument property
public type Currency record {
    # The identifier of Condition
    common:Identifier Identifier?;
    # The name of Condition
    common:Name CurrencyName?;
    # Alphabetic code according to ISO 4217 that is used to refer to a currency, e.g. USD
    common:Currencycode CurrencyAlphabeticCode?;
    # Alphabetic code according to ISO 4217 that is used to refer to a currency, e.g. USD
    common:Currencycode CurrencyNumericalCode?;
    # Symbol that is used to refer to a currency, e.g. $
    string CurrencySymbol?;
    # Name of the country that is using the currency as its official currency
    Country CurrencyCountry?;
    # Number of decimal positions used indicate a fraction of a currency unit
    string CurrencyDecimalPositions?;
    # Face value of a banknote of the currency
    string CurrencyBanknoteDenomination?;
    # Face value of a coin of the currency
    string CurrencyCoinDenomination?;
    # Indicator showing if the bank accepts cash of the currency. Values are yes, banknotes only, no
    common:Yesnoindicator CurrencyCashAcceptedIndicator?;
    # Picture of a banknote denomination of a currency
    string CurrencyBanknotePicture?;
    # Method or tool by which the authenticity of a banknote of a currency can be established
    string CurrencyBanknoteAuthenticationMethod?;
    # Maximum amount of cash that the bank is allowed to hold
    common:Amount MaximumAmountinCash?;
    # Maximum amount of cash that the bank is allowed to hold
    common:Amount MinimumAmountinCash?;
};

# >
# * `FinancialMarket` - 
# * `GeneralMarket` - 
public type Markettypevalues "FinancialMarket"|"GeneralMarket";

public type FinancialMarket record {
    # >
    # * `PrimaryMarket` - The place is a primary market.(ISO20022)
    # * `SecondaryMarket` - The place is a secondary market.(ISO20022)
    # * `ThirdMarket` - The place is a third market.(ISO20022)
    # * `FourthMarket` - The place is a fourth market.(ISO20022)
    # * `OverTheCounter` - The place is over the counter.(ISO20022)
    # * `Various` - Various places.(ISO20022)
    # * `StockExchange` - The place is a stock exchange.(ISO20022)
    # * `Fund` - The place is a fund (transfer agent, fund itself, etc.).(ISO20022)
    # * `LocalMarket` - The place is a local market.(ISO20022)
    # * `Theoretical` - The place is theoretical.(ISO20022)
    # * `Vendor` - The place is a vendor.(ISO20022)
    # * `Interbank` - Specified type of market is inter bank market.(ISO20022)
    # * `Counter` - Specified type of market is counter market.(ISO20022)
    Financialmarkettypevalues FinancialMarketType?;
    # >
    # * `FinancialMarket` - 
    # * `GeneralMarket` - 
    Markettypevalues MarketType?;
    # The identifier of Condition
    common:Identifier MarketIdentification?;
    # Name of the country that is using the currency as its official currency
    Country MarketCountry?;
    #
    # Jurisdiction of the governing law for the trades on this market, for example, City of NY, County of NY, State of NY, regulatory SEC.(ISO20022)
    common:Jurisdiction MarketJurisdiction?;
};

public type DebtInstrumentOk record {|
    *http:Ok;
    # body
    DebtInstrument body;
|};

# Name of the country that is using the currency as its official currency
public type Country record {
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty NationalRegulatoryAuthority?;
    # The name of Condition
    common:Name CountryName?;
    # Identifies a nation with its own government (ISO 3166).
    Countrycode CountryCode?;
};

# The Futures properties that represent a discrete aspect of the Futures Instrument property
public type Option record {
    # The required status/situation before the property is valid/meaningful
    common:Condition Preconditions?;
    # The schedule and timing for which the property value is valid
    common:Schedule Schedule?;
    # The version reference for the property value
    string VersionNumber?;
    # The Futures Instrument property specific  Business Service
    common:BusinessService BusinessService?;
    # Reference to Futures Instrument property
    DirectoryEntry FinancialInstrumentDirectoryEntryReference?;
    # Reference to Option Instrument property
    string OptionInstrumentpropertyReference?;
    # The type of Option Instrument property
    string OptionInstrumentpropertyType?;
};

# The Futures properties that represent a discrete aspect of the Futures Instrument property
public type Warrant record {
    # The required status/situation before the property is valid/meaningful
    common:Condition Preconditions?;
    # The schedule and timing for which the property value is valid
    common:Schedule Schedule?;
    # The version reference for the property value
    string VersionNumber?;
    # The Futures Instrument property specific  Business Service
    common:BusinessService BusinessService?;
    # Reference to Futures Instrument property
    DirectoryEntry FinancialInstrumentDirectoryEntryReference?;
    # Reference to Warrant Instrument property
    string WarrantInstrumentpropertyReference?;
    # The type of Warrant Instrument property
    string WarrantInstrumentpropertyType?;
};

# The Futures properties that represent a discrete aspect of the Futures Instrument property
public type Futures record {
    # The required status/situation before the property is valid/meaningful
    common:Condition Preconditions?;
    # The schedule and timing for which the property value is valid
    common:Schedule Schedule?;
    # The version reference for the property value
    string VersionNumber?;
    # The Futures Instrument property specific  Business Service
    common:BusinessService BusinessService?;
    # Reference to Futures Instrument property
    DirectoryEntry FinancialInstrumentDirectoryEntryReference?;
    # Reference to Futures Instrument property
    string FuturesInstrumentpropertyReference?;
    # The type of Futures Instrument property
    string FuturesInstrumentpropertyType?;
};

# The Futures properties that represent a discrete aspect of the Futures Instrument property
public type DebtInstrument record {
    # The required status/situation before the property is valid/meaningful
    common:Condition Preconditions?;
    # The schedule and timing for which the property value is valid
    common:Schedule Schedule?;
    # The version reference for the property value
    string VersionNumber?;
    # The Futures Instrument property specific  Business Service
    common:BusinessService BusinessService?;
    # Reference to Futures Instrument property
    DirectoryEntry FinancialInstrumentDirectoryEntryReference?;
    # Reference to Debt Instrument property
    string DebtInstrumentpropertyReference?;
    # The type of Debt Instrument property
    string DebtInstrumentpropertyType?;
};

# The Futures properties that represent a discrete aspect of the Futures Instrument property
public type Equity record {
    # The required status/situation before the property is valid/meaningful
    common:Condition Preconditions?;
    # The schedule and timing for which the property value is valid
    common:Schedule Schedule?;
    # The version reference for the property value
    string VersionNumber?;
    # The Futures Instrument property specific  Business Service
    common:BusinessService BusinessService?;
    # Reference to Futures Instrument property
    DirectoryEntry FinancialInstrumentDirectoryEntryReference?;
    # Reference to Equity Instrument property
    string EquityInstrumentpropertyReference?;
    # The type of Equity Instrument property
    string EquityInstrumentpropertyType?;
};

# >
# * `PrimaryMarket` - The place is a primary market.(ISO20022)
# * `SecondaryMarket` - The place is a secondary market.(ISO20022)
# * `ThirdMarket` - The place is a third market.(ISO20022)
# * `FourthMarket` - The place is a fourth market.(ISO20022)
# * `OverTheCounter` - The place is over the counter.(ISO20022)
# * `Various` - Various places.(ISO20022)
# * `StockExchange` - The place is a stock exchange.(ISO20022)
# * `Fund` - The place is a fund (transfer agent, fund itself, etc.).(ISO20022)
# * `LocalMarket` - The place is a local market.(ISO20022)
# * `Theoretical` - The place is theoretical.(ISO20022)
# * `Vendor` - The place is a vendor.(ISO20022)
# * `Interbank` - Specified type of market is inter bank market.(ISO20022)
# * `Counter` - Specified type of market is counter market.(ISO20022)
public type Financialmarkettypevalues "PrimaryMarket"|"SecondaryMarket"|"ThirdMarket"|"FourthMarket"|"OverTheCounter"|"Various"|"StockExchange"|"Fund"|"LocalMarket"|"Theoretical"|"Vendor"|"Interbank"|"Counter";

public type EquityOk record {|
    *http:Ok;
    # body
    Equity body;
|};

# Capture and maintain reference information about some type of entitity within Financial Instrument Reference Data Management.
public type FinancialInstrumentDirectoryEntry record {
    # Documentation of Financial Instrument Directory Entry
    string FinancialInstrumentDirectoryEntryDescription?;
    # The schedule and timing for which the property value is valid
    common:Schedule FinancialInstrumentDirectoryEntrySchedule?;
    # The version of Financial Instrument Directory Entry
    string FinancialInstrumentDirectoryEntryVersion?;
    # FinancialInstrumentDirectoryEntryStatus
    common:Status FinancialInstrumentDirectoryEntryStatus?;
    # Reference to the log of (usage) ativities/events  of Financial Instrument Directory Entry
    common:Log FinancialInstrumentDirectoryEntryUsageLog?;
    # Reference to the log of (usage) ativities/events  of Financial Instrument Directory Entry
    common:Log FinancialInstrumentDirectoryEntryUpdateLog?;
    # The configuration of Financial Instrument Directory Entry
    string FinancialInstrumentDirectoryEntryServiceConfiguration?;
    # Reference to Futures Instrument property
    DirectoryEntry FinancialInstrumentDirectoryEntryReference?;
    # FinancialInstrumentReference
    FinancialInstrument FinancialInstrumentReference?;
    # FinancialMarketReference
    FinancialMarket FinancialMarketReference?;
};

public type FuturesOk record {|
    *http:Ok;
    # body
    Futures body;
|};

public type FinancialInstrument record {
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
    common:Financialinstrumenttypevalues FinancialInstrumentType?;
    # FinancialInstrumentIdentification
    common:Financialinstrumentidentification FinancialInstrumentIdentification?;
    # The name of Condition
    common:Name FinancialInstrumentName?;
    # Key dates of financial instrument
    common:Financialinstrumentdatetime FinancialInstrumentDate?;
    # AssetTitle
    string AssetTitle?;
    # The identifier of Condition
    common:Identifier AssetIdentification?;
    # >
    # * `TangibleAsset` - It has a physical form and can be touched or seen.
    # * `IntangibleAsset` - It doesn't have a physical form but hold value
    # * `OperatingAsset` - Used in the day-to-day operations of the business.
    # * `Non-OperatingAsset` - Not used in core business operations but still provide value
    # * `CurrentAsset` - Expected to be converted into cash within one year.
    # * `Non-Current(Fixed)Asset` - Provide value over the long term (more than one year).
    # * `PersonalAsset` - Owned by individuals and not related to a business.
    # * `BusinessAsset` - Owned by a business and used to generate revenue.
    common:Assettypevalues AssetType?;
    # Description of the asset 
    string AssetDescription?;
    # AssetStatus
    common:Status AssetStatus?;
    # The date when the identifier became valid.
    common:Datetime AssetDate?;
    # Classification of the asset.(ISO20022)
    string AssetClassification?;
    # AssetClassificationType
    common:Assetclassificationtypevalues AssetClassificationType?;
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
    common:Assetsubclassificationtypevalues AssetSubClassificationType?;
    # AssetSubClassification
    string AssetSubClassification?;
};

public type OptionOk record {|
    *http:Ok;
    # body
    Option body;
|};

public type FinancialMarketAnalysisOk record {|
    *http:Ok;
    # body
    FinancialMarketAnalysis body;
|};

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type FinancialMarketInsight record {
    # The required status/situation before the algorithm can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the analysis performed using the algorithm
    common:Schedule AnalysisSchedule?;
    # The algorithm version employed in the analysis
    string VersionNumber?;
    # The Financial Market Insight specific  Business Service
    common:BusinessService BusinessService?;
};

# Analyze the performance or behavior of some on-going activity or entity  within Financial Market Analysis. 
# Examples: Provide behavioral insights and analysis into customer behavior and analyze financial market activity in order to identify opportunities, define pricing and evaluate risks.
#
# Analyze the performance or behavior of some on-going activity or entity. Examples: Provide behavioral insights and analysis into customer behavior and analyze financial market activity in order to identify opportunities, define pricing and evaluate risks.
public type FinancialMarketAnalysis record {
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
    common:Featuretypevalues FinancialMarketAnalysisParameterType?;
    # A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
    common:Feature FinancialMarketAnalysisSelectedOption?;
    # Request to perform Financial Market Analysis
    common:Instruction FinancialMarketAnalysisRequest?;
    # The schedule and timing of the analysis performed using the algorithm
    common:Schedule FinancialMarketAnalysisSchedule?;
    # FinancialMarketAnalysisStatus
    common:Status FinancialMarketAnalysisStatus?;
    # FinancialMarketAnalysisUsageLog
    common:Log FinancialMarketAnalysisUsageLog?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty FinancialMarketAnalysisRequesterReference?;
};

public type FinancialMarketInsightOk record {|
    *http:Ok;
    # body
    FinancialMarketInsight body;
|};

public type FinancialMarketResearchDirectoryEntryOk record {|
    *http:Ok;
    # body
    FinancialMarketResearchDirectoryEntry body;
|};

# Capture and maintain reference information about some type of entitity within Financial Market Research.
public type FinancialMarketResearchDirectoryEntry record {
    # >
    # * `CustomerViewpoint` - 
    # * `CompetitorViewpoint` - 
    # * `MarketDynamicsViewpoint` - 
    # * `ProductServiceViewpoint` - 
    # * `GeographicViewpoint` - 
    # * `EconomicAndPoliticalViewpoint` - 
    # * `TechnologicalViewpoint` - 
    # * `EnvironmentalAndSustainabilityViewpoint` - 
    # * `ChannelAndDistributionViewpoint` - 
    # * `FinancialViewpoint` - 
    Marketresearchviewpointtypevalues FinancialMarketResearchViewpointType?;
    # A description of the available market research consolidated for this maintained viewpoint
    string FinancialMarketResearchViewpointDescription?;
    # The externally sourced reports that are used to assemble the research viewpoint
    FinancialMarketResearch ReferencedFinancialMarketResearchRecord?;
    # Reference to a specific type of predefined market research report or database
    common:MarketResearchReportType FinancialMarketResearchReportTypeReference?;
    # Describes the available market research report content (e.g. customer social network usage analysis)
    string FinancialMarketResearchReportTypeDefinition?;
    # Period of time during which the status is valid.
    common:Datetimeperiod FinancialMarketResearchReportVersionPeriod?;
    # Is the content of the report or database in any suitable form
    FinancialMarketResearchReport FinancialMarketResearchReport?;
    # Usage record of the research viewpoint
    string FinancialMarketResearchViewpointUsage?;
    # Details of the research request
    common:Instruction FinancialMarketResearchReportRequest?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty EmployeeorBusinessUnitReference?;
};

# The externally sourced reports that are used to assemble the research viewpoint
public type FinancialMarketResearch record {
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
    common:Assessmenttypevalues AssessmentType?;
    # AssessmentMethod
    string AssessmentMethod?;
    # AssessmentSchedule
    common:Schedule AssessmentSchedule?;
    # AssessmentDescription
    string AssessmentDescription?;
    # AssessmentModel
    common:Model AssessmentModel?;
    # AssessmentDateTime
    common:Datetime AssessmentDateTime?;
    # AssessmentResult
    string AssessmentResult?;
    # Document that provides background or corroborating information regarding an assessment(s).
    common:Document AssessmentSupportingDocument?;
    # Document that provides background or corroborating information regarding an assessment(s).
    common:Document AssessmentRepresentingDocument?;
    # Change that the assessment reveals is needed.
    string AssessmentRequiredAdjustment?;
    # AssessmentRequirement
    common:Requirement AssessmentRequirement?;
    # Date when the assessment expires. (ISO20022)
    common:Date AssessmentExpiryDate?;
    # AssessmentStatus
    common:Status AssessmentStatus?;
    # An identifier that allows to uniquely refer to an instance of a Document.
    common:Identifier AssessmentIdentification?;
};

# >
# * `CustomerViewpoint` - 
# * `CompetitorViewpoint` - 
# * `MarketDynamicsViewpoint` - 
# * `ProductServiceViewpoint` - 
# * `GeographicViewpoint` - 
# * `EconomicAndPoliticalViewpoint` - 
# * `TechnologicalViewpoint` - 
# * `EnvironmentalAndSustainabilityViewpoint` - 
# * `ChannelAndDistributionViewpoint` - 
# * `FinancialViewpoint` - 
public type Marketresearchviewpointtypevalues "CustomerViewpoint"|"CompetitorViewpoint"|"MarketDynamicsViewpoint"|"ProductServiceViewpoint"|"GeographicViewpoint"|"EconomicAndPoliticalViewpoint"|"TechnologicalViewpoint"|"EnvironmentalAndSustainabilityViewpoint"|"ChannelAndDistributionViewpoint"|"FinancialViewpoint";

# Is the content of the report or database in any suitable form
public type FinancialMarketResearchReport record {
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
    # ReportDateTime
    common:Datetime ReportDateTime?;
    # ReportFormat
    string ReportFormat?;
};

# A Classification value that distinguishes between the type of services within Information Feed Operating Session
public type Servicetype record {
    # Name (label) of the location. (ISO20022)
    common:Name ServiceTypeName?;
    # >
    # * `ITService` - 
    # * `AdministrativeService` - 
    # * `SystemService` - 
    # * `FinancialService` - 
    # * `InformationService` - 
    # * `BusinessService` - 
    common:Servicetypevalues ServiceType?;
};

# The configuration of Information Feed Operating Session
public type SystemConfigurationOption record {
    # Options for configuring the system or the function/feature of system.
    string SystemConfigurationOption?;
};

public type InformationFeedOperatingSessionOk record {|
    *http:Ok;
    # body
    InformationFeedOperatingSession body;
|};

# Operate equipment and/or a largely automated facility within Information Provider Operation. 
public type InformationFeedOperatingSession record {
    # Timetable to operate Information Feed Operating Session
    common:Schedule InformationFeedOperatingSessionSchedule?;
    # The tracked status (e.g. under construction or repair, inhabited, vacant).
    common:Status InformationFeedOperatingSessionStatus?;
    # Reference to the log of (usage) ativities/events  of Information Feed Operating Session
    common:Log InformationFeedOperatingSessionUsageLog?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty InformationFeedOperatingSessionAssociatedPartyReference?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty InformationFeedOperatingSessionServiceProviderReference?;
    # A Classification value that distinguishes between the type of operations within Information Feed Operating Session
    common:Sessiontype InformationFeedOperatingSessionType?;
    # Timetable to operate Information Feed Operating Session
    common:Schedule InformationFeedOperatingSessionServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services within Information Feed Operating Session
    Servicetype InformationFeedOperatingSessionServiceType?;
    # The configuration of Information Feed Operating Session
    SystemConfigurationOption InformationFeedOperatingSessionServiceConfiguration?;
    # An unique reference to an item or an occurrence of Information Feed Operating Session
    common:Session InformationFeedOperatingSessionReference?;
};

# Operate equipment and/or a largely automated facility within Market Data Switch Operation. 
public type InformationFeedSwitchOperatingSession record {
    # This is the uploaded market information that is distributed over the switch - its content is updated dynamically during the operating session
    common:Service MarketInformationFeedServiceReference?;
    # Defines the range of internally published information services/pages
    common:Profile MarketInformationFeedServiceProfile?;
};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type InternalPublication record {
    # This is the uploaded market information that is distributed over the switch - its content is updated dynamically during the operating session
    common:Service InternalInformationFeedServiceReference?;
    # Defines the range of internally published information services/pages
    common:Profile InternalInformationFeedServiceProfile?;
    # Reference to 'live' internal pages of information that is published
    string InternalInformationFeedServiceRecordReference?;
    # This is the uploaded market information that is distributed over the switch - its content is updated dynamically during the operating session
    common:Service InternalInformationFeedServiceRecord?;
};

public type InformationFeedSwitchOperatingSessionOk record {|
    *http:Ok;
    # body
    InformationFeedSwitchOperatingSession body;
|};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type FeedUpload record {
    # Reference to packets of information/records provided, perhaps with real-time updates
    string MarketInformationFeedServiceRecordReference?;
    # This is the uploaded market information that is distributed over the switch - its content is updated dynamically during the operating session
    common:Service MarketInformationFeedServiceRecord?;
};

public type InternalPublicationOk record {|
    *http:Ok;
    # body
    InternalPublication body;
|};

# Reference to the external sources of financial market information. Can be an ongoing service or some form of report
public type FinancialMarketInformationService record {
    # The way the Information Service is provided
    #
    # This has several dimensions that are not elaborated furthere.g. push, pull, request/replye.g. instance, file
    string InformationServiceMode?;
    # The type of information that is provided by the information service
    string InformationServiceContent?;
    # The type of information service (e.g. a regular feed, periodic report)
    string InformationServiceType?;
    # InformationServiceDescription
    string InformationServiceDescription?;
    # InformationServiceDateTime
    string InformationServiceDateTime?;
};

public type ReportingOk record {|
    *http:Ok;
    # body
    Reporting body;
|};

# >
# * `AdvisoryService` - A classification that distinguishes between instances of Information Services according to purpose of advising the destinee of the information.
#
# Advisory is the contracted service to deliver customized advice (once or regularly) in a specific way and for a specific purpose. This service is explicitly negotiated and agreed upon and therefore essentially different from a selling service. This does not mean that it should be priced separately as it can be integrated in a total offer towards clients. Advisory are all products that can be classified as decision support for the clients. In this sense there is an overlap with selling services as some selling services are also advisory although not (always) negotiated.
#
# Includes following services (e.g.)
# 1. Key Plan/Vario Plan
# 2. Financial Advisory
# 3. SME Advisory 
# 4. Portfolio Management
# 5. Client Care 
# 6. Subsidies Advisory
#
# Generic Services are:
# 1. Information Build
# This is the service where for the specific purpose of decision support, data is transformed to information that is structured in a way that the client can easily understand and overview his situation. E.g. a consolidated portfolio overview or a risk profile of the client
# 2. Knowledge Build
# The service where information is built into knowledge. Included are all analysis methods that give a client an in-depth knowledge of his (benchmarked) position. E.g. All different tools for risk analysis and portfolio ratios.
# 3. Personalized Advice
# Build on information about the clients situation and an analysis, a personalized advice can be delivered. An advice is the description of the actions that the client can take to optimize his position. E.g. advice to align portfolio on risk profile.
#
#
# * `ReportingService` - A classification that distinguishes between instances of Information Services according to purpose of reporting with regard to operational and managerial aspects of banking product or service agreements, relations, portfolio's, etc.
#
# Reporting are all the services, linked to a specific product or to the whole of the product portfolio that clients have bought. 
#
# Includes following services (e.g.)
# 1. Statement (Transactional Overview)
# 2. Balance Inquiry
# 3. Portfolio (Position Overview)
# 4. GSM alerts
#
# Generic Services are:
# 1. Transactions Reporting
# The reporting of all transactions that are done on the level of a client or a product (account). Distinction should be made for all channels that are used for the transactions.
# 2. Position Reporting
# The reporting of the (balance) position of an account or a set of accounts.
# 3. Event Reporting
# This service is linked to both services above. If a transaction cannot be executed because insufficient balance on the account is one example of an event.  This event reporting can be configured by the client.
# * `FinancialInformationService` - 
public type Informationservicetypevalues "AdvisoryService"|"ReportingService"|"FinancialInformationService";

# Reference to any agreement covering access to the external service
public type ServiceAgreement record {
    # Type
    string Type?;
    # ServiceReference
    common:Service ServiceReference?;
    # AgreementReference
    common:Agreement AgreementReference?;
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
    # * `ResourceAgreement` - 
    # * `PartnerAgreement` - 
    # * `MasterAgreement` - 
    # * `BilateralAgreement` - 
    # * `RepurchaseAgreement` - 
    common:Agreementtypevalues AgreementType?;
    # AgreementValidityPeriod
    common:Datetimeperiod AgreementValidityPeriod?;
    # AgreementVersion
    string AgreementVersion?;
    # A characteristic of agreement which refers to the LifecycleStatus of agreement (e.g., potential, offered, confirmed, completed, signed, terminated).
    common:Agreementstatus AgreementStatus?;
    # AgreementSubjectMatter
    string AgreementSubjectMatter?;
    # AgreementIdentification
    common:Identifier AgreementIdentification?;
    # The date when the identifier became valid.
    common:Datetime AgreementDate?;
    # AgreementDescription
    string AgreementDescription?;
};

# A collection of one or more clerical routines that are to be followed to administer the operational unit/function
#
# Examples: Time-sheet recording
public type Improvement record {
    # Defines the type of technique used to improve the content (e.g. cross verification, pattern/anomaly detection)
    string FinancialMarketInformationImprovementTaskType?;
    # References to the different sources of financial market information used to improve the content (can be primary source and comparison data)
    string FinancialMarketInformationImprovementTaskSources?;
    # Work documentation, forms and schedules produced and referenced during the enquiry
    common:Workproduct FinancialMarketInformationImprovementTaskWorkProducts?;
    # Output of the improvement task that is recorded back to the Financial Market Information Database
    common:Task FinancialMarketInformationImprovementTaskResult?;
};

# A collection of one or more clerical routines that are to be followed to administer the operational unit/function
#
# Examples: Time-sheet recording
public type Consolidation record {
    # Refers to the content record provided by the external service provider in whatever form suitable
    common:Report FinancialMarketInformationServiceReport?;
    # Key properties of the report used in its improvement (e.g. date created, qualifications of integrity)
    common:Feature FinancialMarketInformationServiceReportProperties?;
};

public type FinancialMarketInformationAdministrativePlanOk record {|
    *http:Ok;
    # body
    FinancialMarketInformationAdministrativePlan body;
|};

# A collection of one or more clerical routines that are to be followed to administer the operational unit/function
#
# Examples: Time-sheet recording
public type Reporting record {
    # Refers to the content record provided by the external service provider in whatever form suitable
    common:Report FinancialMarketInformationReport?;
    # >
    # * `FinancialReport` - 
    # * `BusinessReport` - 
    # * `ManagementReport` - 
    # * `Statement` - 
    # * `MaintenanceReport` - 
    # * `RegulatoryReport` - 
    # * `TaxReport` - 
    # * `AnalysisReport` - 
    common:Reporttypevalues FinancialMarketInformationReportType?;
    # Is a detailed definition of the report contents, including properties that clarify the quality/integrity and timeliness of the content
    string FinancialMarketInformationReportDescription?;
    # Is the schedule for maintaining the report content
    common:Schedule FinancialMarketInformationReportSchedule?;
    # Is a log/record of access made to the report by bank users
    string FinancialMarketInformationReportAccessHistory?;
};

# Handle and assign the day to day activities, capture time, costs and income for an operational unit within Market Information Management. 
public type FinancialMarketInformationAdministrativePlan record {
    # Reference to the external sources of financial market information. Can be an ongoing service or some form of report
    FinancialMarketInformationService FinancialMarketInformationService?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty FinancialMarketInformationProvider?;
    # Defines the scope/content of the financial market information
    string FinancialMarketinformationDescription?;
    # >
    # * `AdvisoryService` - A classification that distinguishes between instances of Information Services according to purpose of advising the destinee of the information.
    #
    # Advisory is the contracted service to deliver customized advice (once or regularly) in a specific way and for a specific purpose. This service is explicitly negotiated and agreed upon and therefore essentially different from a selling service. This does not mean that it should be priced separately as it can be integrated in a total offer towards clients. Advisory are all products that can be classified as decision support for the clients. In this sense there is an overlap with selling services as some selling services are also advisory although not (always) negotiated.
    #
    # Includes following services (e.g.)
    # 1. Key Plan/Vario Plan
    # 2. Financial Advisory
    # 3. SME Advisory 
    # 4. Portfolio Management
    # 5. Client Care 
    # 6. Subsidies Advisory
    #
    # Generic Services are:
    # 1. Information Build
    # This is the service where for the specific purpose of decision support, data is transformed to information that is structured in a way that the client can easily understand and overview his situation. E.g. a consolidated portfolio overview or a risk profile of the client
    # 2. Knowledge Build
    # The service where information is built into knowledge. Included are all analysis methods that give a client an in-depth knowledge of his (benchmarked) position. E.g. All different tools for risk analysis and portfolio ratios.
    # 3. Personalized Advice
    # Build on information about the clients situation and an analysis, a personalized advice can be delivered. An advice is the description of the actions that the client can take to optimize his position. E.g. advice to align portfolio on risk profile.
    #
    #
    # * `ReportingService` - A classification that distinguishes between instances of Information Services according to purpose of reporting with regard to operational and managerial aspects of banking product or service agreements, relations, portfolio's, etc.
    #
    # Reporting are all the services, linked to a specific product or to the whole of the product portfolio that clients have bought. 
    #
    # Includes following services (e.g.)
    # 1. Statement (Transactional Overview)
    # 2. Balance Inquiry
    # 3. Portfolio (Position Overview)
    # 4. GSM alerts
    #
    # Generic Services are:
    # 1. Transactions Reporting
    # The reporting of all transactions that are done on the level of a client or a product (account). Distinction should be made for all channels that are used for the transactions.
    # 2. Position Reporting
    # The reporting of the (balance) position of an account or a set of accounts.
    # 3. Event Reporting
    # This service is linked to both services above. If a transaction cannot be executed because insufficient balance on the account is one example of an event.  This event reporting can be configured by the client.
    # * `FinancialInformationService` - 
    Informationservicetypevalues FinancialMarketInformationServiceType?;
    # Is the schedule for maintaining the report content
    common:Schedule FinancialMarketInformationServiceSchedule?;
    # Reference to any agreement covering access to the external service
    ServiceAgreement FinancialMarketInformationServiceAgreement?;
    # Refers to the consolidated financial market information that is enhanced/improved by the bank for internal reference. This is a collection of different subject areas for which a bank perspective is maintained
    string FinancialMarketInformationDatabase?;
    # Refers to a maintained subject area
    common:Subject FinancialMarketInformationSubjectArea?;
    # A description of the information content of the subject area
    string FinancialMarketInformationSubjectAreaDescription?;
    # A record of the update history of the content
    string FinancialMarketInformationSubjectAreaUpdateHistory?;
    # Refers to a maintained subject area
    common:Subject FinancialMarketInformationSubjectAreaRecord?;
};

public type GlobalStandardSpecificationOk record {|
    *http:Ok;
    # body
    GlobalStandardSpecification body;
|};

public type GlobalReferenceDataOk record {|
    *http:Ok;
    # body
    GlobalReferenceData body;
|};

# The main design elements/views making up the overall specification
#
# Examples: Business Requirements
public type GlobalReferenceData record {
    # The required status/situation before the specification aspect can be defined
    string Preconditions?;
    # The schedule and timing of the definition and update/revisions of the specification aspect
    string SpecificationSchedule?;
    # The current version, and version history as appropriate for the specification aspect
    string VersionNumber?;
    # The Global Reference Data specific  Business Service
    common:BusinessService BusinessService?;
};

# Create and maintain a design for a procedure, product/service model or other such entity  within Public Reference Data Management. 
# Example: Create and maintain product designs and analytical models.
public type GlobalStandardSpecification record {
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
    common:Featuretypevalues GlobalStandardSpecificationParameterType?;
    # A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
    common:Feature GlobalStandardSpecificationSelectedOption?;
    # Documentation of Global Standard Specification
    string GlobalStandardSpecificationDescription?;
    # The version of Global Standard Specification
    string GlobalStandardSpecificationVersion?;
    # A characteristic of service which refers to the lifecycle of service (e.g., initiated, active, de-active, etc.) 
    common:Status GlobalStandardSpecificationStatus?;
    # Reference to the log of (usage) ativities/events of Global Standard Specification
    common:Log GlobalStandardSpecificationUsageLog?;
    # Information about reactions to a design which is used as a basis for improvement for the Global Standard Specification.
    string GlobalStandardSpecificationFeedback?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty GlobalStandardSpecificationServiceProviderReference?;
};
