import financial.bian.attribute.groups.common as common;

import ballerina/http;

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
