import financial.bian.attribute.groups.common as common;

import ballerina/http;

# To test or assess an entity, possibly against some formal qualification or certification requirement within Regulatory Compliance. 
public type RegulatoryComplianceAssessment record {
    # The type and make-up of regulatory tests referenced in the assessment
    string RegulatoryAssessmentType?;
    # Reference to the business function or unit assessed for compliance if applicable
    common:BusinessUnit BusinessUnitReference?;
    # Reference to the product or service being assessed, possibly in combination with the referenced customer and the referenced business unit
    common:Product ProductandServiceReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerReference?;
    # Reference to the authority pertaining to the evaluated regulation
    common:RegulatoryAuthority RegulatoryAuthorityReference?;
    # Reference to the specific regulation against which the assessment is done
    common:Regulation RegulationReference?;
    # Description of the specific regulation against which the assessment is done
    string RegulationDefinition?;
    # Description of the measurements and reporting required to demonstrate compliance
    string RegulationComplianceandReportingRequirements?;
    # Reference to the business function or unit assessed for compliance if applicable
    common:BusinessUnit RegulationAccountability?;
    # Description of the implications of non-compliance
    string RegulationPenalties?;
    # Guidelines issued by the regulator about how to comply with the regulation
    Guideline RegulationGuideline?;
    # A reference to an instance in Document Directory
    common:Document DocumentReference?;
    # Work documentation, forms and schedules produced and referenced during the assessment
    common:Workproduct RegulatoryAssessmentWorkProducts?;
    # Description of the result of the assessment, can include remedial actions
    string RegulatoryAssessmentResult?;
    # RegulatoryComplianceAssessmentReference
    common:Identifier RegulatoryComplianceAssessmentReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty AssessmentRequestor?;
    # The date when the identifier became valid.
    common:Datetime AssessmentStartDate?;
    # The date when the identifier became valid.
    common:Datetime AssessmentCompletionDate?;
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
    common:Organisationlegalstructuretypevalues RegulationCustomerType?;
    # >
    # * `Resident` - 
    # * `Permanentresident` - 
    # * `Nonresident` - 
    Residentalstatustypevalues RegulationCustomerResidenceStatus?;
    # The date when the identifier became valid.
    common:Datetime RegulationValidfromDate?;
    # The date when the identifier became valid.
    common:Datetime RegulationValidtoDate?;
};

public type RegulatoryComplianceAssessmentOk record {|
    *http:Ok;
    # body
    RegulatoryComplianceAssessment body;
|};

# >
# * `Resident` - 
# * `Permanentresident` - 
# * `Nonresident` - 
public type Residentalstatustypevalues "Resident"|"Permanentresident"|"Nonresident";

# Guidelines issued by the regulator about how to comply with the regulation
public type Guideline record {
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
    common:Rulesettypevalues RuleSetType?;
    # RuleSetName
    common:Name RuleSetName?;
    # RuleSetIdentification
    common:Identifier RuleSetIdentification?;
    # RuleSetLifecycleStatus
    common:Status RuleSetLifecycleStatus?;
};
