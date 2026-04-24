import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type DirectDebitsServiceFacility record {
    # Code, issued by the local authority (National Adherence Support Organisation), that identifies the customer as being recorded for using direct debits as a payment instrument (name is SEPA standard) GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier Identifier?;
    # Code, issued by the local authority (National Adherence Support Organisation), that identifies the customer as being recorded for using direct debits as a payment instrument (name is SEPA standard) GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier CreditorIdentifier?;
    # Reference to the customer instance in Party Reference Data Directory ||
    # |
    common:involvedparty CustomerReference?;
    # Reference to the instance of Corporate Current Account into which the direct debit payments will be made Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account CreditorAccountReference?;
    # Date on which the Direct Debits Service ends ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime StartDate?;
    # Date on which the Direct Debits Service ends ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime EndDate?;
    # Reason for having the service, e.g. Telephone charges ||
    # |
    common:text Reason?;
    # Periodicity of the instructions of the direct debit. Values are: Single, Recurring fixed, Recurring variable OBExternalDirectDebitFrequency1Code|OBExternalDirectDebitFrequency1Code (https://openbankinguk.github.io/read-write-api-site3/v3.1.11/references/namespaced-enumerations.html#obexternaldirectdebitfrequency1code)|Standard|UK Open Banking ()
    // common:directdebitfrequencyvalues Periodicity?;
    # Reference to the currency of the amounts of the Direct Debits Service CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode CurrencyReference?;
    # Reference to the Sales Product Agreement for this Direct Debits Service ||
    # |
    common:ProductAgreement SalesProductAgreementReference?;
    # Details of the fee arrangement that the bank concluded with the customer Adjustment|Adjustment (https://www.iso20022.org/standardsrepository/type/Adjustment)|Standard|ISO20022 BM ()
    common:feearrangement FeeDetails?;
    # Name of the National Adherence Support Organisation that issued the Creditor Identifier. Name|Name (https://www.iso20022.org/standardsrepository/type/Name)|Standard|ISO20022 ()
    common:name NASOName?;
};

public type DirectDebitsServiceFacilityOk record {|
    *http:Ok;
    DirectDebitsServiceFacility body;
|};
