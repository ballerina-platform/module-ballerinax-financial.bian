import financial.bian.attribute.groups.common as common;

import ballerina/http;

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

# Reference to Futures Instrument property
public type DirectoryEntry record {
    # >
    # * `OpenDate` - 
    # * `RefreshDate` - 
    common:Directoryentrydatetypevalues DirectoryEntryDateType?;
    # DirectoryEntryDate
    common:Date DirectoryEntryDate?;
    # DirectoryEntryStatus
    common:Status DirectoryEntryStatus?;
};

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
