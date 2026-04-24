import financial.bian.attribute.groups.common as common;

import ballerina/http;

# >
# * `RegistrationDate` - Date and time at which a given organisation was officially registered. (ISO20022)
# * `EstablishmentDate` - Date when the organisation was established. ISO20022
# * `EntityExpirationDate` - The date the Legal Entity ceased operation or was merged. ISO20022
# The record for the servicing task
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
# >
# * `Person` - Human entity, as distinguished from a corporate entity (which is sometimes referred to as an 'artificial person'). ISO20022
# * `Organisation` - Organised structure that is set up for a particular purpose. For example, a business, government body, department, charity, or financial institution. ISO20022
# >
# * `ShortName` - 
# * `TradingName` - 
# * `LegalName` - 
# Name by which a party is known and which is usually used to identify that party. (ISO20022)
# Status Attributes
# Reference to a third party service provider that handles some aspect of customer servicing access with the bank
# Complete work tasks following a defined procedure in support of general office activities and product and service delivery within Servicing Order. 
public type ServicingOrderProcedure record {
    # Reference to a third party service provider that handles some aspect of customer servicing access with the bank
    common:Party ThirdPartyReference?;
    # Reference to a third party servicing mandate - used when a third party is requesting the service order
    # ThirdPartyServicingMandateReference
    string ThirdPartyServicingMandateReference?;
    # The servicing mandate for a third party defines the customers and service access allowed
    string ThirdPartyServicingMandate?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerReference?;
    # CustomerEligibilityAssessmentInstanceReference
    common:Identifier CustomerEligibilityAssessmentInstanceReference?;
    # ServicingOrderType
    string ServicingOrderType?;
    # The record for the servicing task
    common:Task ServicingOrderTaskRecord?;
    # Defines the processing tasks and their sequencing followed by the servicing order
    # ServicingOrderDescription
    string ServicingOrderDescription?;
    # Date
    common:Datetime Date?;
    # Employees involved in the servicing order
    # EmployeeBusinessUnitReference
    common:BusinessUnit EmployeeBusinessUnitReference?;
    # Work documentation, forms and schedules produced and referenced during the analysis
    # ServicingOrderWorkProduct
    common:Workproduct ServicingOrderWorkProduct?;
    # The record for the servicing task
    # ServicingOrderWorkTaskResult
    common:Task ServicingOrderWorkTaskResult?;
};

# Economical activity of Party (ISO20022)
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
# >
# * `Document` - 
# * `WorkingPaper` - 
# * `ActivityLog` - 
# * `Form` - 
# * `File` - File of consolidated notes, evaluations and recommendations for the work task
# * `MeetingSchedule` - 
# * `MeetingMinute` - 
public type ServicingOrderProcedureOk record {|
    *http:Ok;
    # body
    ServicingOrderProcedure body;
|};

