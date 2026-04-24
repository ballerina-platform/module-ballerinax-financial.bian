import financial.bian.attribute.groups.common as common;

import ballerina/http;

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

# Type of the standing order. StandingOrderTypeCode|StandingOrderTypeCode (https://www.iso20022.org/standardsrepository/type/StandingOrderTypeCode)|Standard|ISO20022 BM ()
public type standingordertypevalues "UserDefinedStandingOrder"|"PredefinedStandingOrder";

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
