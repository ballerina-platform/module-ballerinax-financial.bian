import ballerinax/financial.bian.attribute.groups.customers as customers;

// This function transforms the JSON response from the API into a CustomerCreditRatingState record defined in the relationship_management module.
isolated function transformCustomerCreditRatingState(json response) returns customers:CustomerCreditRatingState|error => {
    "CustomerReference": {
        "PartyReference": check response?.CustomerReference?.PartyReference,
        "InvolvementReference": check response?.CustomerReference?.InvolvementReference
    },
    "CustomerCreditRatingStatusType": check response?.CustomerCreditRatingStatusType,
    "CustomerCreditRatingSchedule": {
        "ScheduleType": check response?.CustomerCreditRatingSchedule?.ScheduleType
    },
    "CustomerCreditRatingAssessmentRecord": {
        "CustomerCreditRatingAssessmentType": check response?.CustomerCreditRatingAssessmentRecord?.CustomerCreditRatingAssessmentType,
        "CustomerCreditRatingAssessmentDate": {
            "DateTimeContent": check response?.CustomerCreditRatingAssessmentRecord?.CustomerCreditRatingAssessmentDate?.DateTimeContent,
            "TimeZoneCode": check response?.CustomerCreditRatingAssessmentRecord?.CustomerCreditRatingAssessmentDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.CustomerCreditRatingAssessmentRecord?.CustomerCreditRatingAssessmentDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.CustomerCreditRatingAssessmentRecord?.CustomerCreditRatingAssessmentDate?.DateTimeType
        },
        "CustomerCreditRatingAssessmentResult": {
            "AssessmentType": check response?.CustomerCreditRatingAssessmentRecord?.CustomerCreditRatingAssessmentResult?.AssessmentType,
            "AssessmentResult": check response?.CustomerCreditRatingAssessmentRecord?.CustomerCreditRatingAssessmentResult?.AssessmentResult
        },
        "CustomerCreditRatingAssessmentWorkProduct": {
            "WorkProductType": check response?.CustomerCreditRatingAssessmentRecord?.CustomerCreditRatingAssessmentWorkProduct?.WorkProductType,
            "WorkProductIdentifoication": {
                "IdentifierValue": check response?.CustomerCreditRatingAssessmentRecord?.CustomerCreditRatingAssessmentWorkProduct?.WorkProductIdentifoication?.IdentifierValue
            }
        },
        "CustomerCreditRatingAssessmentNarrative": check response?.CustomerCreditRatingAssessmentRecord?.CustomerCreditRatingAssessmentNarrative
    },
    "AssessmentCustomerBehaviorModelReference": {
        "CustomerBehaviorModelType": check response?.AssessmentCustomerBehaviorModelReference?.CustomerBehaviorModelType
    },
    "CreditRatingAssessmentType": check response?.CreditRatingAssessmentType,
    "CreditRatingAssessmentDate": {
        "DateTimeContent": check response?.CreditRatingAssessmentDate?.DateTimeContent,
        "TimeZoneCode": check response?.CreditRatingAssessmentDate?.TimeZoneCode,
        "DaylightSavingIndicator": check response?.CreditRatingAssessmentDate?.DaylightSavingIndicator,
        "DateTimeType": check response?.CreditRatingAssessmentDate?.DateTimeType
    },
    "CreditRatingAssessmentWorkProducts": {
        "WorkProductType": check response?.CreditRatingAssessmentWorkProducts?.WorkProductType,
        "WorkProductIdentifoication": {
            "IdentifierValue": check response?.CreditRatingAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierValue
        }
    },
    "CreditRatingAssessmentResult": {
        "AssessmentType": check response?.CreditRatingAssessmentResult?.AssessmentType,
        "AssessmentResult": check response?.CreditRatingAssessmentResult?.AssessmentResult
    },
    "CustomerCreditRatingRecord": {
        "CustomerCreditRatingType": check response?.CustomerCreditRatingRecord?.CustomerCreditRatingType,
        "CustomerCreditRatingNarrative": check response?.CustomerCreditRatingRecord?.CustomerCreditRatingNarrative,
        "CustomerCreditRatingDate": {
            "DateTimeContent": check response?.CustomerCreditRatingRecord?.CustomerCreditRatingDate?.DateTimeContent,
            "TimeZoneCode": check response?.CustomerCreditRatingRecord?.CustomerCreditRatingDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.CustomerCreditRatingRecord?.CustomerCreditRatingDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.CustomerCreditRatingRecord?.CustomerCreditRatingDate?.DateTimeType
        }
    },
    "CustomerCreditRatingState": check response?.CustomerCreditRatingState,
    "CustomerCreditRatingAssessment": {
        "CustomerCreditRatingAssessmentType": check response?.CustomerCreditRatingAssessment?.CustomerCreditRatingAssessmentType,
        "CustomerCreditRatingAssessmentDate": {
            "DateTimeContent": check response?.CustomerCreditRatingAssessment?.CustomerCreditRatingAssessmentDate?.DateTimeContent,
            "TimeZoneCode": check response?.CustomerCreditRatingAssessment?.CustomerCreditRatingAssessmentDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.CustomerCreditRatingAssessment?.CustomerCreditRatingAssessmentDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.CustomerCreditRatingAssessment?.CustomerCreditRatingAssessmentDate?.DateTimeType
        },
        "CustomerCreditRatingAssessmentResult": {
            "AssessmentType": check response?.CustomerCreditRatingAssessment?.CustomerCreditRatingAssessmentResult?.AssessmentType,
            "AssessmentResult": check response?.CustomerCreditRatingAssessment?.CustomerCreditRatingAssessmentResult?.AssessmentResult
        },
        "CustomerCreditRatingAssessmentWorkProduct": {
            "WorkProductType": check response?.CustomerCreditRatingAssessment?.CustomerCreditRatingAssessmentWorkProduct?.WorkProductType,
            "WorkProductIdentifoication": {
                "IdentifierValue": check response?.CustomerCreditRatingAssessment?.CustomerCreditRatingAssessmentWorkProduct?.WorkProductIdentifoication?.IdentifierValue
            }
        },
        "CustomerCreditRatingAssessmentNarrative": check response?.CustomerCreditRatingAssessment?.CustomerCreditRatingAssessmentNarrative
    },
    "CustomerCreditRatingNarrative": check response?.CustomerCreditRatingNarrative,
    "CustomerCreditRatingDate": {
        "DateTimeContent": check response?.CustomerCreditRatingDate?.DateTimeContent,
        "TimeZoneCode": check response?.CustomerCreditRatingDate?.TimeZoneCode,
        "DaylightSavingIndicator": check response?.CustomerCreditRatingDate?.DaylightSavingIndicator,
        "DateTimeType": check response?.CustomerCreditRatingDate?.DateTimeType
    }
};
