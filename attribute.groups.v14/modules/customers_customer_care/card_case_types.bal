import financial.bian.attribute.groups.common as common;

# >
# * `RegistrationDate` - Date and time at which a given organisation was officially registered. (ISO20022)
# * `EstablishmentDate` - Date when the organisation was established. ISO20022
# * `EntityExpirationDate` - The date the Legal Entity ceased operation or was merged. ISO20022
# Network used for handling the card payment transaction.
public type Cardnetwork record {
    # Network for handling the card based transaction (e.g. Visa, MC, AMEX, Diners, etc.)
    #
    # A card network are networks of issuing and acquiring banks through which payment cards of some certain brand are processed. two types of card networks can be pointed out, namely, credit card associations (Visa, MasterCard, Discover, Amex, etc.) and PINless debit card networks (NYCE, PULSE, Maestro, Interlink, Cirrus, etc.).
    #
    # Card networks are financial services companies that enables, processes and settles payments between card issuing banks and merchant banks worldwide. Examples are Visa, MasterCard, Discover, RuPay etc.
    #
    # A card network is a system of connecting merchants and card issuers.  A middle person that collects funds from card issuer and pays it to the merchant.  Visa and MasterCard are examples of card networks.
    string CardNetwork?;
};

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
# * `Suspended` - System is suspended, that is, not operational.
# * `Active` - System is functioning normally, that is, operational.
# * `Closed` - System is closed (eg. normal closure of an RTGS).
# * `Closing` - System needs to wait for completion of intermediate internal activities before going to a status Closed.
# * `Reservemaintenanceperiodstart` - System is starting a new maintenance period.
public type Systemstatustypevalues "Suspended"|"Active"|"Closed"|"Closing"|"Reservemaintenanceperiodstart";

# The time the service was requested
public type DateTime record {
    # Expression of the point in time
    #
    # is expressed according to "TimeIndicationType"
    # e.g. period, day, more detailed indication
    string TimeIndication?;
    # TimeIndicationType
    string TimeIndicationType?;
};

# Identifies a nation with its own government (ISO 3166).
public type Countrycode record {
    # Code to identify a country, a dependency, or another area of particular geopolitical interest, on the basis of country names obtained from the United Nations (ISO 3166, Alpha-2 code).
    string Countrycode?;
};

# >
# * `Issuercitidentification` - Identification, given by the Issuer, of the transaction processed with the cardholder that legitimates this merchant initiated transaction. (ISO20022)
# * `Merchantcitidentification` - Identification, given by the merchant, of the transaction processed with the cardholder that legitimates this merchant initiated transaction. (ISO20022)
public type Cardpaymenttransactionidentificationtypevalues "Issuercitidentification"|"Merchantcitidentification";

# The tracked status (e.g. under construction or repair, inhabited, vacant).

# Reference to participant's use of a Network service
public type CardNetworkParticpantService record {
    # The type of Network Participant Service  (e.g. merchant alert, chargeback arbitration, chargeback reduction)
    string NetworkParticipantServiceType?;
    # Details of service charge levied against the Network Participant Facility.
    string NetworkParticipantServiceCharge?;
    # Key dates and times associated with the provision of the service (e.g. initiation of service fulfillment)
    string NetworkParticipantServiceDate\/Time?;
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
    common:Productfeaturetypevalues ProductFeatureType?;
    # ProductFeatureSpecification
    string ProductFeatureSpecification?;
    # ProductFeatureIdentification
    common:Identifier ProductFeatureIdentification?;
    # Name (label) of the location. (ISO20022)
    # ProductFeatureName
    common:Name ProductFeatureName?;
    # The tracked status (e.g. under construction or repair, inhabited, vacant).
    # ProductFeatureLifecycleStatus
    common:Status ProductFeatureLifecycleStatus?;
};

# >
# * `CardDesign` - 
public type Devicecustomizationtypevalues "CardDesign";

# Country of the merchant where the transaction took place. (ISO20022)
public type Country record {
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty NationalRegulatoryAuthority?;
    # Name (label) of the location. (ISO20022)
    # CountryName
    common:Name CountryName?;
    # Identifies a nation with its own government (ISO 3166).
    # CountryCode
    Countrycode CountryCode?;
};

# >
# * `CurrentAccountAgreement` - 
# * `SavingsAccountAgreement` - 
# * `BrokeredProductAgreement` - 
# * `ConsumerLoanAgreement` - 
# * `MortgageLoanAgreement` - 
# * `DirectDebitServiceAgreement` - 
# * `TermDepositAgreement` - 
# >
# * `Offered` - 
# * `Confirmed` - 
# * `Completed` - 
# * `Signed` - 
# * `Terminated` - 
# * `Rejected` - 
# >
# * `Model` - Identification of a model for a given manufacturer.
# * `Serialnumber` - Serial number of a component.
# * `Approvalnumber` - Unique approval number for a component, delivered by a certification body.
# * `Systemversion` - Version of the system, eg, "4.0.1" to indicate version 4.0.1.
# * `Systemname` - Name by which a system is known.
# * `Identification` - Identification of a system.
public type Systemidentificationtypevalues "Model"|"Serialnumber"|"Approvalnumber"|"Systemversion"|"Systemname"|"Identification";

# >
# * `BaseCurrency` - Base currency of the account. (ISO20022)
#
# * `ReportingCurrency` - Currency used to calculate and report the balance and related entries of an account. (ISO20022)
#
# * `SecondaryCurrency` - 
# * `TransferCurrency` - Currency of the amount to be transferred which may be different from the currency of the debtor's account. (ISO20022)
# * `SettlementCurrency` - Specifies the currency used for settlement, if different from the account currency. 
# A characteristic of instruction which refers to the LifecycleStatus of instruction (e.g., requested, executed, fulfilled, etc.); 
# Reference to the issued device submitted to authorize the transaction (e.g. card number)
public type IssuedDevice record {
    # >
    # * `Issued` - 
    # * `IssuedButNotActivated` - 
    # * `Activated` - 
    # * `Suspended` - 
    # * `Retrieved` - 
    Issueddevicestatustypevalues IssuedDeviceStatus?;
    # Reference to Party to whom the device is issued
    string IssuedDevicePartyReference?;
    # Specific characteristics of an issued device 
    #
    # e.g. installed software, number-range of cheques, personification of card lay-ou
    string IssuedDeviceConfiguration?;
    # Reference to the device that is issued
    string IssuedDeviceReference?;
    # Period of time during which the status is valid.
    common:Datetimeperiod IssuedDeviceValidityPeriod?;
    # The delivery method. via post, collect at branch, via courier
    # IssuedDeviceDeliveryMethod
    string IssuedDeviceDeliveryMethod?;
    # Key dates associated with the directory entry (e.g. open date, refresh date).
    common:Datetime DeviceIssueDate?;
    # The name of the branch where the party will collect the device
    # IssuedDeviceCollectLocation
    common:Branch IssuedDeviceCollectLocation?;
    # Reference to the product or service to which the Issued Device will be attached
    # IssuedDeviceProductReference
    string IssuedDeviceProductReference?;
    # >
    # * `CardDesign` - 
    Devicecustomizationtypevalues IssedDeviceCustomizationType?;
    # DeviceIdentification
    common:Deviceidentification DeviceIdentification?;
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
    common:Devicetypevalues DeviceType?;
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
    # The tracked status (e.g. under construction or repair, inhabited, vacant).
    common:Status DeviceStatus?;
    # DeviceVersion
    string DeviceVersion?;
    # Key dates associated with the directory entry (e.g. open date, refresh date).
    common:Datetime DeviceDateTime?;
    # DeviceDescription
    string DeviceDescription?;
    # Name (label) of the location. (ISO20022)
    common:Name DeviceName?;
    # Preferred language set on the device
    # DeviceLanguage
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
    common:Deviceoperatingsystemtypevalues DeviceOperatingSystem?;
};

# >
# * `OpenDate` - 
# * `RefreshDate` - 
# >
# * `Cardsfundtransfer` - Transfer of funds to and/or from a card account.
# * `Originalcredit` - Original credit.
# * `Cardpayment` - Card payment.
# * `Cashback` - Card payment with cash-back.
# * `Cashadvance` - Cash advance or withdrawals on a POI (Point Of Interaction), or at a bank counter.
# * `Cashdeposit` - Cash deposit.
# * `Deferredpayment` - Deferred payment.
# * `Reservation` - Reservation (pre-authorisation).
# * `Loading` - Loading or reloading non-financial account.
# * `Refund` - Refund transaction.
# * `Quasicash` - Quasi-cash.
# * `Balance` - Balance enquiry.
# * `Cardactivation` - Card activation.
# * `Cardverification` - Card verification.
# * `Pinchange` - PIN (Personal Identification Number) change.
# * `Validitycheck` - Card validity check.
# * `Aggregation` - Aggregation of low payments.
# * `DCC` - Dynamic currency conversion (DCC).
# * `Gratuity` - Card payment with gratuity.
# * `Instalment` - Instalment payment.
# * `Loyalty` - Loyalty services.
# * `Noshow` - No show after reservation.
# * `Purchasecorporate` - Purchase and corporate data.
# * `Recurringpayment` - Recurring payment.
# * `Solicitedavailablefunds` - Solicited available funds.
# * `Unsolicitedavailablefunds` - Unsolicited available funds.
# * `Voiceauthorisation` - Voice authorisation.
# * `Initialreservation` - Initial reservation.
# * `Updatereservation` - Update reservation.
# * `Paymentreservation` - Payment after reservation.
# * `Additionalpayment` - Additional payment after reservation.
# * `Firstrecurring` - Initial recurring payment.
# * `Followingrecurring` - Repeat recurring payment.
# * `Persontobusiness` - Card payment transaction transfer from person to business.
# * `Persontoperson` - Card payment transaction transfer from person to person.
# * `Acceptorinstalment` - Instalment payment transaction performed by the acceptor or the acquirer.
# * `Issuerinstalment` - Instalment payment transaction performed by the card issuer.
# * `Unloading` - Unloading non-financial account.
# * `Cardsfundtransferpush` - Transfer of funds to a card or an account.
# * `Cardsfundtransferpull` - Transfer of funds from a card or an account.
# * `Cashwithdrawal` - Withdrawal of cash on an ATM.
# * `Pinunblock` - Unblock the cardholder PIN.
# * `Chosenwithdrawal` - Amount and notes values are chosen by the customer.
# * `Preauthorisedwithdrawal` - Withdrawal transaction was pre-authorised by another channel (amount could be absent).
# * `Profilewithdrawal` - Amount and Notes Values are pre-defined by the customer profile.
# * `Standardwithdrawal` - Customer pressed a button associated with a withdrawal of unique amount and notes mix.
# * `Transfercardbillpayment` - Transfer for payment of bills.
# * `Transferfromcash` - Transfer from cash deposit.
# * `Transferfromcheque` - Transfer from cheque deposit.
# * `Transferfundsdisbursementgeneral` - Transfer for general disbursement.
# * `Transfergovernmentdisbursement` - Transfer for government disbursement.
# * `Transfermerchantdisbursement` - Transfer for merchant disbursement.
# * `Transferpayrollpensiondisbursement` - Transfer for payroll pension disbursement.
# * `Nonrefundable` - Payment of goods or services which are not refundable, for instance low cost airline tickets.
# * `Instant` - Instant transaction.
# * `Creditadjustement` - Credit adjustment to a previous transaction.
# * `Debitadjustement` - Debit adjustment to a previous transaction.
# * `Createcertificate` - Creation of an X.509 certificate with the public key and the information of the owner of the asymmetric key provided by the requestor.
# * `Renewcerificate` - Renewal of an X.509 certificate, protected by the certificate to renew.
# * `Revokecertificate` - Revocation of an active X.509 certificate.
# * `Addwhitelist` - Add a POI in the white list of the terminal manager.
# * `Removewhitelist` - Remove a POI from the white list of the terminal manager.
# * `Cardinitiatingdirectdebit` - Direct Debit initiated by Card.
# * `Guaranteeofpayment` - Acceptor claims for guarantee of payment.
public type Cardpaymenttransactionservicetypevalues "Cardsfundtransfer"|"Originalcredit"|"Cardpayment"|"Cashback"|"Cashadvance"|"Cashdeposit"|"Deferredpayment"|"Reservation"|"Loading"|"Refund"|"Quasicash"|"Balance"|"Cardactivation"|"Cardverification"|"Pinchange"|"Validitycheck"|"Aggregation"|"DCC"|"Gratuity"|"Instalment"|"Loyalty"|"Noshow"|"Purchasecorporate"|"Recurringpayment"|"Solicitedavailablefunds"|"Unsolicitedavailablefunds"|"Voiceauthorisation"|"Initialreservation"|"Updatereservation"|"Paymentreservation"|"Additionalpayment"|"Firstrecurring"|"Followingrecurring"|"Persontobusiness"|"Persontoperson"|"Acceptorinstalment"|"Issuerinstalment"|"Unloading"|"Cardsfundtransferpush"|"Cardsfundtransferpull"|"Cashwithdrawal"|"Pinunblock"|"Chosenwithdrawal"|"Preauthorisedwithdrawal"|"Profilewithdrawal"|"Standardwithdrawal"|"Transfercardbillpayment"|"Transferfromcash"|"Transferfromcheque"|"Transferfundsdisbursementgeneral"|"Transfergovernmentdisbursement"|"Transfermerchantdisbursement"|"Transferpayrollpensiondisbursement"|"Nonrefundable"|"Instant"|"Creditadjustement"|"Debitadjustement"|"Createcertificate"|"Renewcerificate"|"Revokecertificate"|"Addwhitelist"|"Removewhitelist"|"Cardinitiatingdirectdebit"|"Guaranteeofpayment";

# Details the reference, amount, timestamp of the transaction authorization
public type Authorization record {
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
    # The time schedule that system services are available for use.
    common:Schedule AssessmentSchedule?;
    # AssessmentDescription
    string AssessmentDescription?;
    # AssessmentModel
    common:Model AssessmentModel?;
    # Key dates associated with the directory entry (e.g. open date, refresh date).
    # AssessmentDateTime
    common:Datetime AssessmentDateTime?;
    # AssessmentResult
    string AssessmentResult?;
    # Document copy/content - legal or significant documents created & referenced
    common:Document AssessmentSupportingDocument?;
    # Document copy/content - legal or significant documents created & referenced
    # AssessmentRepresentingDocument
    common:Document AssessmentRepresentingDocument?;
    # Change that the assessment reveals is needed.
    # AssessmentRequiredAdjustment
    string AssessmentRequiredAdjustment?;
    # AssessmentRequirement
    common:Requirement AssessmentRequirement?;
    # AssessmentExpiryDate
    common:Date AssessmentExpiryDate?;
    # AssessmentStatus
    common:Status AssessmentStatus?;
    # AssessmentIdentification
    common:Identifier AssessmentIdentification?;
};

# Specifies the status of a payment transaction at a specified time.
# Elements
public type Paymenttransactionstatus record {
    # The tracked status (e.g. under construction or repair, inhabited, vacant).
    common:Status PaymentTransactionStatus?;
    # >
    # * `Acceptedtechnicalvalidation` - Authentication and syntactical and semantical validation are successful.
    # * `Received` - Payment initiation has been received by the receiving agent.
    # * `Partiallyaccepted` - A number of transactions have been accepted, whereas another number of transactions have not yet achieved 'accepted' status.
    # * `Rejected` - Payment initiation or individual transaction included in the payment initiation has been rejected.
    # * `Pending` - Payment initiation or individual transaction included in the payment initiation is pending.  Further checks and status update will be performed.
    # * `Acceptedcustomerprofile` - Preceding check of technical validation was successful. Customer profile check was also successful.
    # * `Acceptedsettlementinprocess` - All preceding checks such as technical validation and customer profile were successful and therefore the payment initiation has been accepted for execution.
    # * `Acceptedsettlementcompleted` - Settlement on the debtor's account has been completed.
    # * `Accepted` - Request is accepted.
    # * `Acceptedcancellationrequest` - Cancellation is accepted.
    # * `Rejectedcancellationrequest` - Cancellation request is rejected
    # * `Acceptedwithchange` - Instruction is accepted but a change will be made, such as date or remittance not sent.
    # * `Partiallyacceptedcancellationrequest` - Cancellation is partially accepted.
    # * `Pendingcancellationrequest` - Cancellation request is pending.
    # * `Acceptedcreditsettlementcompleted` - Settlement on the creditor's account has been completed.
    # * `Paymentcancelled` - Payment is cancelled.
    # * `Nocancellationprocess` - There is no cancellation process ongoing
    Paymenttransactionstatustypevalues PaymentTransactionStatusType?;
};

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
# The instruction to book chargeback for the transaction - could be partial chargeback
public type ChargebackInstruction record {
    # An instruction to book chargeback for the transaction. 
    string ChargebackInstruction?;
};

# Key dates associated with the directory entry (e.g. open date, refresh date).
# >
# * `Debit` - Transaction is a debt entry
# * `Credit` - Transaction is a credit entry
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
# The main worsteps to be followed in th eexecution of the procedure
#
# Examples: Invoice generation
public type Arbitration record {
    # Reference to the card transaction for the consolidation
    CardPaymentTransaction ArbitrationCardTransactionRecordReference?;
    # Reference to participant's use of a Network service
    CardNetworkParticpantService NetworkParticipantNetworkServiceRequestReference?;
    # Reference to participant's use of a Network service
    CardNetworkParticpantService NetworkParticipantNetworkServiceRequestRecord?;
    # >
    # * `ITService` - 
    # * `AdministrativeService` - 
    # * `SystemService` - 
    # * `FinancialService` - 
    # * `InformationService` - 
    # * `BusinessService` - 
    common:Servicetypevalues NetworkParticipantServiceType?;
    # The time the service was requested
    # NetworkParticipantServiceDateandTime
    DateTime NetworkParticipantServiceDateandTime?;
    # The outcome of the arbitration service request
    string NetworkParticipantServiceResult?;
};

# Amount of card payment
# The instruction message to the merchant to provide card transaction related paperwork, includes issued device details, transaction identification information and the retrieval reason
public type CardPaymentInstruction record {
    # A classification of an instance of a payment instruction as an inbound or outbound payment.
    string PaymentInstructionDirectionType?;
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
    common:Paymenttypevalues PaymentInstructionType?;
    # The payment system requested to be used in a payment instruction.
    # PaymentInstructionRequestedMechanism
    string PaymentInstructionRequestedMechanism?;
    # Period of time during which the status is valid.
    common:Datetimeperiod PaymentInstructionProcessingValidityTime?;
    # >
    # * `Urgent` - Priority level is urgent (highest priority possible).
    # * `High` - Priority level is high.
    # * `Normal` - Priority level is normal.
    # * `Low` - Priority level is low.
    common:Priorityvaluetypes PaymentInstructionPriority?;
    # >
    # * `Realtimegrosssettlementsystem` - Clearing channel is a real-time gross settlement system.
    # * `Realtimenetsettlementsystem` - Clearing channel is a real-time net settlement system.
    # * `Masspaymentnetsystem` - Clearing channel is a mass payment net settlement system.
    # * `Booktransfer` - Payment through internal book transfer.
    Clearingchanneltypevalues PaymentInstructionClearingChannel?;
    # >
    # * `Debit` - Transaction is a debt entry
    # * `Credit` - Transaction is a credit entry
    common:Debitcreditindicatortvalues PaymentInstructionCreditDebitIndicator?;
    # PaymentInstructionStatus
    common:Paymentinstructionstatus PaymentInstructionStatus?;
    # PaymentInstructionAmountAndCurrency
    common:Paymentamountandcurrency PaymentInstructionAmountAndCurrency?;
    # PaymentInstructionDateAndTime
    common:Paymentdatetime PaymentInstructionDateAndTime?;
    # PaymentInstructionIdentification
    common:Paymentidentification PaymentInstructionIdentification?;
    # >
    # * `Cheque` - Written order to a bank to pay a certain amount of money from one person to another person.
    # * `Credittransfer` - Transfer of an amount of money in the books of the account servicer.
    # * `Directdebit` - Collection of an amount of money from the debtor's bank account by the creditor. The amount of money and dates of collections may vary.
    # * `Transferadvice` - Transfer of an amount of money in the books of the account servicer. An advice should be sent back to the account owner.
    # * `Direct` - Direct method.
    # * `Classical` - Classical method.
    common:Paymentmethodtypevalues PaymentInstructionMethod?;
    # Remittance Information is the descriptive data included in a payment order that explains the purpose of the payment and enables the beneficiary to reconcile the incoming funds with the corresponding invoice, contract, or obligation.
    #
    # Comment: 
    # Structured → Formal codes or fields defined by standards (e.g., ISO 20022 structured remittance, tax references, purpose codes).
    # Unstructured → Free-text description provided by the payer (e.g., Payment for Invoice 12345).
    string PaymentInstructionDescription?;
    # InstructionDate
    common:Instructiondatetime InstructionDate?;
    # A characteristic of instruction which refers to the LifecycleStatus of instruction (e.g., requested, executed, fulfilled, etc.); 
    # InstructionStatus
    common:Instructionstatus InstructionStatus?;
    # An identifier that allows to uniquely refer to an instance of an Instruction.
    # InstructionIdentification
    common:Instructionidentification InstructionIdentification?;
    # >
    # * `PaymentInstruction` - 
    # * `DeliveryOrder` - 
    # * `InformationRequest` - 
    # * `ExchangeInstruction` - 
    # * `AllocationInstruction` - 
    # * `MaintenanceInstruction` - 
    common:Instructiontypevalues InstructionType?;
    # InstructionResult
    string InstructionResult?;
    # InstructionDescription
    string InstructionDescription?;
    # InstructionLog
    common:Log InstructionLog?;
    # InstructionPurpose
    string InstructionPurpose?;
    # >
    # * `PaymentInstruction` - 
    # * `IssuingInstruction` - 
    # * `BookingInstruction` - 
    # * `CollateralAllocationInstruction` - 
    # * `AmendmentInstruction` - 
    # * `TerminationInstruction` - 
    common:Undertakinginstructiontypevalues UndertakingInstructionType?;
    # Classification of the Money Transfer Instruction according to the event that lead to the instruction
    #
    # e.g. withdrawal, interest disbursement, direct debit, card payment.
    string MoneyTransferInstructionType?;
    # Amount of money to be transferred.
    string MoneyTransferInstructionAmount?;
    # Currency in which the transfer amount is expressed.
    string MoneyTransferInstructionAmountCurrency?;
    # The reason why the instruction is given
    #
    # can be reference to a lot of information, concerning e.g. a purchase, an arrangement fulfillment event, a billing period...
    string MoneyTransferInstructionPurpose?;
    # The network to be used for the processing of the money transfer instruction as requested in the instruction.
    # e.g. instant SEPA?
    string MoneyTransferInstructionRequestedMechanism?;
    # A characteristic of instruction which refers to the LifecycleStatus of instruction (e.g., requested, executed, fulfilled, etc.); 
    common:Instructionstatus MoneyTransferInstructionStatus?;
    # Reference to the contact channel that was used to give the money transfer instruction
    # MoneyTransferInstructionChannelReference
    string MoneyTransferInstructionChannelReference?;
    # Amount of card payment
    common:Amount InstructionAmount?;
    # InstructionCurrency
    common:Accountcurrency InstructionCurrency?;
    # * `DepositInstruction` - 
    # * `WithdrawInstruction` - 
    # * `MoneyTransferInstruction` - 
    # * `StandingOrder/Instruction` - 
    # * `SettlementInstruction` - 
    # * `PaymentInstruction` - 
    # * `RepaymentInstruction` - 
    common:Financialinstructiontypevalues FinancialInstructionType?;
};

# >
# * `Continent` - 
# * `Country` - 
# * `State` - 
# * `District` - 
# * `Province` - 
# * `Town` - 
# * `City` - 
# * `Region` - 
# Specifies the category to which the card transaction belongs. (ISO20022)
public type Cardtransactioncategorytypevalues record {
    # Cardtransactioncategorytypevalues
    string Cardtransactioncategorytypevalues?;
};

# >
# * `Issued` - 
# * `IssuedButNotActivated` - 
# * `Activated` - 
# * `Suspended` - 
# * `Retrieved` - 
public type Issueddevicestatustypevalues "Issued"|"IssuedButNotActivated"|"Activated"|"Suspended"|"Retrieved";

# >
# * `Acceptedtechnicalvalidation` - Authentication and syntactical and semantical validation are successful.
# * `Received` - Payment initiation has been received by the receiving agent.
# * `Partiallyaccepted` - A number of transactions have been accepted, whereas another number of transactions have not yet achieved 'accepted' status.
# * `Rejected` - Payment initiation or individual transaction included in the payment initiation has been rejected.
# * `Pending` - Payment initiation or individual transaction included in the payment initiation is pending.  Further checks and status update will be performed.
# * `Acceptedcustomerprofile` - Preceding check of technical validation was successful. Customer profile check was also successful.
# * `Acceptedsettlementinprocess` - All preceding checks such as technical validation and customer profile were successful and therefore the payment initiation has been accepted for execution.
# * `Acceptedsettlementcompleted` - Settlement on the debtor's account has been completed.
# * `Accepted` - Request is accepted.
# * `Acceptedcancellationrequest` - Cancellation is accepted.
# * `Rejectedcancellationrequest` - Cancellation request is rejected
# * `Acceptedwithchange` - Instruction is accepted but a change will be made, such as date or remittance not sent.
# * `Partiallyacceptedcancellationrequest` - Cancellation is partially accepted.
# * `Pendingcancellationrequest` - Cancellation request is pending.
# * `Acceptedcreditsettlementcompleted` - Settlement on the creditor's account has been completed.
# * `Paymentcancelled` - Payment is cancelled.
# * `Nocancellationprocess` - There is no cancellation process ongoing
public type Paymenttransactionstatustypevalues "Acceptedtechnicalvalidation"|"Received"|"Partiallyaccepted"|"Rejected"|"Pending"|"Acceptedcustomerprofile"|"Acceptedsettlementinprocess"|"Acceptedsettlementcompleted"|"Accepted"|"Acceptedcancellationrequest"|"Rejectedcancellationrequest"|"Acceptedwithchange"|"Partiallyacceptedcancellationrequest"|"Pendingcancellationrequest"|"Acceptedcreditsettlementcompleted"|"Paymentcancelled"|"Nocancellationprocess";

# Reference to the card transaction for the consolidation
public type CardPaymentTransaction record {
    # Amount of card payment
    common:Amount Amount?;
    # Place where the merchant actually performed the transaction. (ISO20022)
    # MerchantLocation
    common:Location MerchantLocation?;
    # >
    # * `Debit` - Transaction is a debt entry
    # * `Credit` - Transaction is a credit entry
    common:Debitcreditindicatortvalues DebitCreditDirection?;
    # >
    # * `Mailorder` - Mail order.
    # * `Telephoneorder` - Telephone order.
    # * `Electroniccommerce` - Electronic commerce.
    # * `Televisionpayment` - Payment on television.
    # * `Officeorbranch` - Office or branch.
    # * `Homebanking` - Home banking.
    # * `Financialadvisor` - Financial advisor.
    # * `Mobilepayment` - Payment performed through a cardholder mobile device.
    # * `Securedelectroniccommerce` - Electronic commerce with cardholder authentication.
    # * `Mobilepos` - Payment performed through a merchant mobile device.
    Transactionchanneltypevalues CardTransactionChannel?;
    # Describes the Point of Interaction through which the payment by card was initiated. (ISO20022)
    Pointofservice PointOfInteraction?;
    # Key dates associated with the directory entry (e.g. open date, refresh date).
    common:Datetime CardTransactionDateTime?;
    # >
    # * `Merchant` - Merchant environment.
    # * `Private` - Private environment.
    # * `Public` - Public environment.
    # * `Branch` - Bank environment.
    # * `Other` - Other environments, for instance a mall or an airport.
    Transactionenvironmenttypevalues CardTransactionEnvironmentType?;
    # Country of the merchant where the transaction took place. (ISO20022)
    Country MerchantCountry?;
    # Network used for handling the card payment transaction.
    Cardnetwork CardNetwork?;
    # >
    # * `Cashback` - Cash-back amount.
    # * `Gratuity` - Gratuity amount.
    # * `Fees` - Fees.
    # * `Rebates` - Global rebate of the transaction. This amount is counted as a negative amount.
    # * `Valueaddedtax` - Value added tax amount.
    # * `Actual` - Actual amount.
    # * `Replacement` - Replacement amount.
    # * `Maximum` - Maximum amount (the final amount must be less or equal).
    # * `Default` - Default amount.
    # * `Estimated` - Estimated amount (the final amount could be above or below).
    # * `Original` - Original amount authorised during the real-time authorisation process.
    # * `Surcharge` - Extra fee for a purchase or a withdrawal.
    # * `Servicefee` - Service fee.
    # * `Interchangefee` - Interchange fee.
    # * `Discount` - Discount, rebate or voucher, related to loyalty programs. This amount is counted as a negative amount.
    # * `Atmcommissionfee` - Commission that the issuer will charge to the cardholder, which should be shown and accepted by the cardholder before the money is disbursed.
    # * `Authorisedamount` - Transaction amount that has been authorised.
    # * `Cardremainingbalance` - Remaining allowed amount for this type of transaction with this card, after the transaction, until the end of the card limit period.
    # * `Maximumallowedamount` - Maximum amount allowed for the transaction in the transaction amount currency if the transaction amount of the request was declined.
    # * `Minimumallowedamount` - Minimum amount allowed in the TransactionAmount currency if the transaction amount of the request was declined.
    # * `Requestedamount` - Transaction amount that has been requested to be authorised.
    # * `Issuerfees` - Fees amount from the card issuer.
    # * `Issuercommission` - Commission from the card issuer.
    # * `Interchangefees` - Interchange fees.
    # * `Processingfees` - Processing fees.
    # * `Currencyconversionfees` - Currency conversion fees.
    # * `Internationalserviceassessmentfees` - International service assessment fees.
    # * `Commission` - Commission, for example for DCC (Dynamic Currency Conversion) transactions.
    # * `Donation` - Donation amount.
    # * `Tax` - Taxes applicable to the transaction.
    # * `Incremental` - Incremental amount for reservation.
    # * `Decremental` - Decremental amount for reservation.
    # * `Reserved` - Reserved or updated reserved amount for reservation.
    # * `Confirmedamount` - Actual amount that has been paid to the ultimate beneficiary, after all charges etc... have been deducted.
    # * `Instructedamount` - Amount of money to be moved between the debtor (ordering customer) and creditor, before deduction of charges, expressed in the currency as ordered by the initiating party.
    # * `Atmaccessfee` - Fee for giving access to an ATM.
    # * `Cardholderbillingfee` - Fee related to a cardholder billing.
    # * `Clearingfee` - Fee related to a clearing transaction.
    # * `Credittransactionfee` - Fee related to a credit transaction.
    # * `Cumulative` - Contains the total amount of all authorisations related to the same cardholder purchase activities. Example: total of all incremental or splitted shipment authorisations for the same purchase.
    # * `Debittransactionfee` - Fee related to a debit transaction.
    # * `Extra` - Extra charges (for example,  minibar, etc.)
    # * `Foreignexchangefee` - Fee related to a foreign exchange transaction.
    # * `Fundstransfer` - Fee related to a funds transfer transaction
    # * `Instantpaymentfee` - Fee related to an instant payment.
    # * `Instanttransferfee` - Fee related to an instant transfer transaction.
    # * `Issuercardholderfee` - Fee applied by the card issuer to the cardholder.
    # * `Limit` - Limit of amounts for the transaction.
    # * `Othernational` - Other type of amount defined at national level.
    # * `Otherprivate` - Other type of amount defined at private level.
    # * `Reconciliationfee` - Fee related to a reconciliation transaction.
    # * `Settlementfee` - Fee related to a settlement transaction.
    # * `Transactionfee` - Fee related to a transaction.
    # * `Anticipated` - Amount anticipated for the transaction
    # * `Baggage` - Baggage related fees
    # * `Chargedtocard` - Amount that has been charged to card account
    # * `Clearingpriorityfee` - Fee related to a clearing transaction for a given priority.
    # * `Dental` - Amount qualified for dental prescriptions
    # * `Deposit` - Deposit amount.
    # * `Fundstransferfee` - Fee related to a funds transfer.
    # * `Otherqualifiedmedical` - Amount qualified for other medical expenses
    # * `Prescription` - Amount for medical prescription
    # * `Proxy` - Substitute for an amount to be authorised.
    # * `Requestedcashback` - Requested cashback amount
    # * `Settlementpriorityfee` - Fee related to a settlement transaction for a given priority.
    # * `Totalhealthcare` - Total healthcare amount
    # * `Transit` - Amount in transit
    # * `Vision` - Amount qualified for medical vision expenses
    # * `Connect` - Telephone connection-related charge
    # * `Data` - Data communication related charges
    # * `Exchangeticket` - Fee for exchanging a ticket (modifying an itinerary)
    # * `Exchangeticketfee` - Fee for exchanging a ticket (modifying an itinerary)
    # * `Fare` - Amount of fare
    # * `Foodbeverage` - Amount of food and beverages
    # * `Insurance` - Insurance charges
    # * `Longdistance` - Charges related to a long distance call.
    # * `Miscellaneous` - Miscellaneous charges not elsewhere defined
    # * `Phone` - Phone charges
    # * `Prepayment` - Amount of prepayment
    # * `Total` - Total amount of charges
    # * `Usage` - Telephone usage-related charge
    # * `Predcc` - Local amount before DCC (Dynamic Currency Conversion) was applied.
    # * `Upgrade` - Amount for an upgrade.
    # * `Clubfee` - Amount for club fee.
    # * `Cargo` - Cargo Amount.
    # * `Dutyfree` - Duty free amount
    # * `Ticketdelivery` - Ticket delivery amount.
    # * `Petcarrier` - Pet carrier.
    # * `Tourorder` - Tour order amount.
    # * `Minimuminterchangefee` - Minimum interchange fee applicable.
    # * `Maximuminterchangefee` - Maximum applicable interchange fee.
    # * `Cashbackinterchangefee` - Interchange fee applicable to cash back amount.
    Amountqualifiertypevalues AmountQualifier?;
    # The tracked status (e.g. under construction or repair, inhabited, vacant).
    common:Status CardPaymentStatus?;
    # Specifies the category to which the card transaction belongs. (ISO20022)
    # CardTransactionCategory
    Cardtransactioncategorytypevalues CardTransactionCategory?;
    # Identification of the transaction assigned by the initiator of the request. For instance refers to POITransactionIdentification if used inside an authorisation request or to SaleTransactionIdentification if the message is a payment request initiated by a sale system. (ISO20022)
    Cardpaymenttransactionidentification CardPaymentTransactionIdentification?;
    # >
    # * `Cardsfundtransfer` - Transfer of funds to and/or from a card account.
    # * `Originalcredit` - Original credit.
    # * `Cardpayment` - Card payment.
    # * `Cashback` - Card payment with cash-back.
    # * `Cashadvance` - Cash advance or withdrawals on a POI (Point Of Interaction), or at a bank counter.
    # * `Cashdeposit` - Cash deposit.
    # * `Deferredpayment` - Deferred payment.
    # * `Reservation` - Reservation (pre-authorisation).
    # * `Loading` - Loading or reloading non-financial account.
    # * `Refund` - Refund transaction.
    # * `Quasicash` - Quasi-cash.
    # * `Balance` - Balance enquiry.
    # * `Cardactivation` - Card activation.
    # * `Cardverification` - Card verification.
    # * `Pinchange` - PIN (Personal Identification Number) change.
    # * `Validitycheck` - Card validity check.
    # * `Aggregation` - Aggregation of low payments.
    # * `DCC` - Dynamic currency conversion (DCC).
    # * `Gratuity` - Card payment with gratuity.
    # * `Instalment` - Instalment payment.
    # * `Loyalty` - Loyalty services.
    # * `Noshow` - No show after reservation.
    # * `Purchasecorporate` - Purchase and corporate data.
    # * `Recurringpayment` - Recurring payment.
    # * `Solicitedavailablefunds` - Solicited available funds.
    # * `Unsolicitedavailablefunds` - Unsolicited available funds.
    # * `Voiceauthorisation` - Voice authorisation.
    # * `Initialreservation` - Initial reservation.
    # * `Updatereservation` - Update reservation.
    # * `Paymentreservation` - Payment after reservation.
    # * `Additionalpayment` - Additional payment after reservation.
    # * `Firstrecurring` - Initial recurring payment.
    # * `Followingrecurring` - Repeat recurring payment.
    # * `Persontobusiness` - Card payment transaction transfer from person to business.
    # * `Persontoperson` - Card payment transaction transfer from person to person.
    # * `Acceptorinstalment` - Instalment payment transaction performed by the acceptor or the acquirer.
    # * `Issuerinstalment` - Instalment payment transaction performed by the card issuer.
    # * `Unloading` - Unloading non-financial account.
    # * `Cardsfundtransferpush` - Transfer of funds to a card or an account.
    # * `Cardsfundtransferpull` - Transfer of funds from a card or an account.
    # * `Cashwithdrawal` - Withdrawal of cash on an ATM.
    # * `Pinunblock` - Unblock the cardholder PIN.
    # * `Chosenwithdrawal` - Amount and notes values are chosen by the customer.
    # * `Preauthorisedwithdrawal` - Withdrawal transaction was pre-authorised by another channel (amount could be absent).
    # * `Profilewithdrawal` - Amount and Notes Values are pre-defined by the customer profile.
    # * `Standardwithdrawal` - Customer pressed a button associated with a withdrawal of unique amount and notes mix.
    # * `Transfercardbillpayment` - Transfer for payment of bills.
    # * `Transferfromcash` - Transfer from cash deposit.
    # * `Transferfromcheque` - Transfer from cheque deposit.
    # * `Transferfundsdisbursementgeneral` - Transfer for general disbursement.
    # * `Transfergovernmentdisbursement` - Transfer for government disbursement.
    # * `Transfermerchantdisbursement` - Transfer for merchant disbursement.
    # * `Transferpayrollpensiondisbursement` - Transfer for payroll pension disbursement.
    # * `Nonrefundable` - Payment of goods or services which are not refundable, for instance low cost airline tickets.
    # * `Instant` - Instant transaction.
    # * `Creditadjustement` - Credit adjustment to a previous transaction.
    # * `Debitadjustement` - Debit adjustment to a previous transaction.
    # * `Createcertificate` - Creation of an X.509 certificate with the public key and the information of the owner of the asymmetric key provided by the requestor.
    # * `Renewcerificate` - Renewal of an X.509 certificate, protected by the certificate to renew.
    # * `Revokecertificate` - Revocation of an active X.509 certificate.
    # * `Addwhitelist` - Add a POI in the white list of the terminal manager.
    # * `Removewhitelist` - Remove a POI from the white list of the terminal manager.
    # * `Cardinitiatingdirectdebit` - Direct Debit initiated by Card.
    # * `Guaranteeofpayment` - Acceptor claims for guarantee of payment.
    Cardpaymenttransactionservicetypevalues CardPaymentTransactionServiceType?;
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
    common:Paymenttypevalues PaymentTransactionType?;
    # Amount of card payment
    # PaymentTransactionAmount
    common:Amount PaymentTransactionAmount?;
    # An identifier that allows to uniquely refer to a Payment Transaction.
    # PaymentTransactionIdentification
    common:Paymentidentification PaymentTransactionIdentification?;
    # The payment mechanism the bank decides to use in the transaction to execute a payment instruction 
    # PaymentTransactionUsedMechanism
    string PaymentTransactionUsedMechanism?;
    # PaymentTransactionDatetime
    common:Paymentdatetime PaymentTransactionDatetime?;
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
    common:Paymentpurposevalues PaymentTransactionPurpose?;
    # Specifies the status of a payment transaction at a specified time.
    # Elements
    Paymenttransactionstatus PaymentTransactionStatus?;
    # Amount of card payment
    common:Amount PaymentTransactionAppliedFeeAmount?;
    # >
    # * `BaseCurrency` - Base currency of the account. (ISO20022)
    #
    # * `ReportingCurrency` - Currency used to calculate and report the balance and related entries of an account. (ISO20022)
    #
    # * `SecondaryCurrency` - 
    # * `TransferCurrency` - Currency of the amount to be transferred which may be different from the currency of the debtor's account. (ISO20022)
    # * `SettlementCurrency` - Specifies the currency used for settlement, if different from the account currency. 
    common:Currencytypevalues PaymentTransactionCurrency?;
    # >
    # * `Debit` - Transaction is a debt entry
    # * `Credit` - Transaction is a credit entry
    common:Debitcreditindicatortvalues PaymentTransactionCreditDebitIndicator?;
    # TransactionIdentification
    common:Identifier TransactionIdentification?;
    # A characteristic of transaction which refers to the LifecycleDate of transaction (e.g., initiated date, executed date, fulfillment date). 
    common:Transactiondatetime TransactionDate?;
    # >
    # * `FinancialTransaction` - 
    # * `BusinessTransaction` - 
    # * `BankingTransaction` - 
    # * `AccountingTransaction` - 
    # * `BookingTransaction` - 
    # * `AllocationTransaction` - 
    # * `DeliveryTransaction` - 
    # * `ProductionTransaction` - 
    common:Transactiontypevalues TransactionType?;
    # A detailed explanation or commentary of transaction.
    # TransactionDescription
    string TransactionDescription?;
    # A characteristic of transaction which refers to the LifecycleStatus of transaction (e.g., initiated, executed, confirmed, cancelled, etc.) 
    common:Transactionstatus TransactionStatus?;
    # Name (label) of the location. (ISO20022)
    # TransactionName
    common:Name TransactionName?;
    # >
    # * `PaymentTransaction` - 
    # * `IssuingTransaction` - 
    # * `BookingTransaction` - 
    # * `CollateralAllocationTransaction` - 
    # * `TerminationTransaction` - 
    # * `AmendmentTransaction` - 
    common:Undertakingtransactiontypevalues UndertakingTransactionType?;
    # Amount of card payment
    # MoneyTransferTransactionAmount
    common:Amount MoneyTransferTransactionAmount?;
    # The currency of the money transfer amount
    # MoneyTransferTransactionCurrency
    string MoneyTransferTransactionCurrency?;
    # The account the money is transferred from.
    string MoneyTransferTransactionSourceAccount?;
    # The account the money is transferred to.
    string MoneyTransferTransactionTargetAccount?;
    # MoneyTransferInstructionReference
    string MoneyTransferInstructionReference?;
    # money
    # The method used to transfer money; Can be a payment network but also something physical.
    string MoneyTransferUsedMethod?;
    # The date on which the money is considerd to have left/have arrived become active can be used /strats to starts is considerd to be 
    string MoneyTransferValueDate?;
    # >
    # * `PricingTransaction` - 
    # * `FeeTransaction` - 
    # * `WithdrawalTransaction` - 
    # * `DepositTransaction` - 
    # * `PaymentTransaction` - 
    # * `ClearingTransaction` - 
    # * `SettlementTransaction` - 
    # * `Reconciliationtransaction` - 
    # * `Updatetransaction` - 
    # * `Securitiestransaction` - 
    # * `RepaymentTransaction` - 
    common:Financialtransactiontypevalues FinancialTransactionType?;
    # FinancialTransactionCurrency
    common:Currencycode FinancialTransactionCurrency?;
    # FinancialTransactionAmount
    common:Amount FinancialTransactionAmount?;
    # FinancialTransactionFromAccount
    common:Account FinancialTransactionFromAccount?;
    # FinancialTransactionTargetAccount
    common:Account FinancialTransactionTargetAccount?;
    # FinancialTransactionDateTime
    common:Datetime FinancialTransactionDateTime?;
};

# >
# * `Mailorder` - Mail order.
# * `Telephoneorder` - Telephone order.
# * `Electroniccommerce` - Electronic commerce.
# * `Televisionpayment` - Payment on television.
# * `Officeorbranch` - Office or branch.
# * `Homebanking` - Home banking.
# * `Financialadvisor` - Financial advisor.
# * `Mobilepayment` - Payment performed through a cardholder mobile device.
# * `Securedelectroniccommerce` - Electronic commerce with cardholder authentication.
# * `Mobilepos` - Payment performed through a merchant mobile device.
public type Transactionchanneltypevalues "Mailorder"|"Telephoneorder"|"Electroniccommerce"|"Televisionpayment"|"Officeorbranch"|"Homebanking"|"Financialadvisor"|"Mobilepayment"|"Securedelectroniccommerce"|"Mobilepos";

// public type CardCaseProcedureOk record {|
//     *http:Ok;
//     # body
//     CardCaseProcedure body;
// |};

# A Classification value that specifies the type of Budget
# A characteristic of arrangement which refers to the LifecycleStatus of arrangement (e.g., requested, proposed, offered, accepted, cancelled, terminated, fulfilled, etc.)
# Describes the Point of Interaction through which the payment by card was initiated. (ISO20022)
public type Pointofservice record {
    # The time schedule that system services are available for use.
    common:Schedule SystemAccessSchedule?;
    # SystemType
    string SystemType?;
    # SystemIdentification
    common:Identifier SystemIdentification?;
    # >
    # * `Model` - Identification of a model for a given manufacturer.
    # * `Serialnumber` - Serial number of a component.
    # * `Approvalnumber` - Unique approval number for a component, delivered by a certification body.
    # * `Systemversion` - Version of the system, eg, "4.0.1" to indicate version 4.0.1.
    # * `Systemname` - Name by which a system is known.
    # * `Identification` - Identification of a system.
    Systemidentificationtypevalues SystemIdentificationType?;
    # The tracked status (e.g. under construction or repair, inhabited, vacant).
    common:Status SystemStatus?;
    # >
    # * `Suspended` - System is suspended, that is, not operational.
    # * `Active` - System is functioning normally, that is, operational.
    # * `Closed` - System is closed (eg. normal closure of an RTGS).
    # * `Closing` - System needs to wait for completion of intermediate internal activities before going to a status Closed.
    # * `Reservemaintenanceperiodstart` - System is starting a new maintenance period.
    Systemstatustypevalues SystemStatusType?;
    # Key dates associated with the directory entry (e.g. open date, refresh date).
    common:Datetime SystemDateTime?;
    #
    # Specifies the language used by the system. (ISO20022)
    string SystemLanguage?;
};

# An action that is arranged in a plan for doing or achieving something 
# The lifecycle status of Goal like Goal Setting, Planning, Execution, Monitoring and Evaluation, Completion or Achievement, Maintenance or Sustainment, Closure or Renewal
# Reference to a Party who plays a  specific role in the context of assigning a status.
# The document reference for associated documents
# >
# * `Short-TermGoal` - 
# * `Long-TermGoal` - 
# * `BusinessGoal` - 
# * `PerformanceGoal` - 
# * `FinancialGoal` - 
# * `OutcomeGoal` - 
# * `SMARTGoal` - 
# The applied currency conversion charge
public type FeeArrangement record {
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
    common:Feetypevalues FeeType?;
    # Amount of card payment
    # FeeAmount
    common:Amount FeeAmount?;
    # Rate used to calculate the amount of the adjustment, allowance, charge or fee. (ISO20022)
    # FeeRate
    common:Rate FeeRate?;
    # Period of time during which the status is valid.
    # FeeEffectivePeriod
    common:Datetimeperiod FeeEffectivePeriod?;
    # Key dates associated with the directory entry (e.g. open date, refresh date).
    # FeeDueDate
    common:Datetime FeeDueDate?;
    # An arranged FeeRatePlan
    # FeePlan
    common:Feeplan FeePlan?;
    # >
    # * `Debit` - Transaction is a debt entry
    # * `Credit` - Transaction is a credit entry
    common:Debitcreditindicatortvalues FeeCreditDebitIndicator?;
    # Reason for the amount adjustment (fee). 
    # FeeReason
    string FeeReason?;
    # >
    # * `Added` - Adjustment amount must be added to the total amount.
    # * `Substracted` - Adjustment amount must be substracted from the total amount.
    common:Adjustmentdirectiontypevalues FeeDirection?;
    # >
    # * `Bornebydebtor` - All transaction charges are to be borne by the debtor.
    # * `Bornebycreditor` - All transaction charges are to be borne by the creditor.
    # * `Shared` - In a credit transfer context, means that transaction charges on the sender side are to be borne by the debtor, transaction charges on the receiver side are to be borne by the creditor. In a direct debit context, means that transaction charges on the sender side are to be borne by the creditor, transaction charges on the receiver side are to be borne by the debtor.
    # * `Followingservicelevel` - Charges are to be applied following the rules agreed in the service level and/or scheme.
    common:Chargebearertypevalues FeeBearerType?;
    # Frequency at which the fee is charged
    # FeeChargingFrequency
    common:Frequency FeeChargingFrequency?;
    # >
    # * `Cash` - Payment is with cash.
    # * `Unit` - Units are redeemed to cover payment.
    common:Feepaymentmethodtypevalues FeePaymentMethodType?;
    # LoanOriginationDate
    common:Date LoanOriginationDate?;
    # LoanMaturityDate
    common:Date LoanMaturityDate?;
    # LoanEndDate
    common:Date LoanEndDate?;
    # LoanAmount
    common:Amount LoanAmount?;
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
    common:Arrangementtypevalues LoanArrangementType?;
    # ArrangementAction
    common:Action ArrangementAction?;
    # ArrangementStartDate
    common:Datetime ArrangementStartDate?;
    # Key dates associated with the directory entry (e.g. open date, refresh date).
    # ArrangementEndDate
    common:Datetime ArrangementEndDate?;
    # A characteristic of arrangement which refers to the LifecycleStatus of arrangement (e.g., requested, proposed, offered, accepted, cancelled, terminated, fulfilled, etc.)
    # ArrangementStatus
    common:Arrangementstatus ArrangementStatus?;
    # ArrangementSubjectMatter
    common:Subject ArrangementSubjectMatter?;
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
    common:Arrangementtypevalues Arrangementtype?;
    # ArrangementIdentification
    common:Identifier ArrangementIdentification?;
    # PaymentCardArrangementIdentifier
    common:Identifier PaymentCardArrangementIdentifier?;
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
    common:Arrangementtypevalues CardPaymentArrangementType?;
    # >
    # * `FeeArrangement` - An arrangement which specifies to charge fees when banking transactions did take place, accompanied by the modalities to calculate and charge the fees and the related terms and conditions. 
    # * `FinancialPlanningArrangement` - An arrangement that specifies obligations/rights engaged in the financial advisory service agreement to deliver the Financial Planning Advisory Service
    #
    # Financial Planning Advisory Service is a financial advisory service that provides basic financial advice for short and long term investment and financing options
    # * `TaxOptimizationArrangement` - An arrangement that specifies obligations/rights engaged in the financial advisory service agreement for providing a tax related advice like:
    # - Engaging a product tax specialist to liaise with the customer
    # -The service charge to be made to the customer for the specialist support
    #
    # Tax Optimization Advisory Service is a financial advisory service that provides tax (and compliance) related advice for product and service optimization
    # * `StrategicFundingArrangement` - 
    # * `TacticalFundingArrangement` - 
    # * `CapitalStructuringArrangement` - 
    # * `ProductGuidanceArrangement` - An arrangement that specifies obligations/rights engaged in the financial advisory service agreement to deliver the ProductGuidanceAdvisoryService
    #
    # Product Guidance Advisory Service is a financial advisory service that provides product and service specific guidance and insights
    common:Financialadvisoryservicearrangementtype FinancialAdvisoryServiceArrangementType?;
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
    common:Arrangementtypevalues SavingsAccountArrangementType?;
    # Reference to the product feature applied in this arrangement 
    # SavingsAccountArrangementProductFeatureType
    common:Productfeaturetype SavingsAccountArrangementProductFeatureType?;
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
    common:Arrangementtypevalues CurrentAccountArrangementType?;
    # Reference to the product feature applied in this arrangement 
    # CurrentAccountArrangementProductFeatureType
    common:Productfeaturetype CurrentAccountArrangementProductFeatureType?;
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
    common:Arrangementtypevalues ArrangementType?;
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
    common:Arrangementtypevalues TermDepositArrangementType?;
    # Reference to the product feature applied in this arrangement 
    # TermDepositArrangementProductFeatureType
    common:Productfeaturetype TermDepositArrangementProductFeatureType?;
    # Key dates associated with the directory entry (e.g. open date, refresh date).
    # TermDepositMaturityDate
    common:Datetime TermDepositMaturityDate?;
    # Key dates associated with the directory entry (e.g. open date, refresh date).
    # TermDepositOpenDate
    common:Datetime TermDepositOpenDate?;
    # Amount of card payment
    # TermDepositAmount
    common:Amount TermDepositAmount?;
    # TermDepositDuration
    common:Duration TermDepositDuration?;
    # DepositTerm
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
    common:Arrangementtypevalues BankPlanArrangementType?;
    # Key dates associated with the directory entry (e.g. open date, refresh date).
    # CreditFacilityDataTime
    common:Datetime CreditFacilityDataTime?;
    # >
    # * `Revolving` - 
    # * `FixedAmount` - 
    # * `Decreasing` - 
    common:Creditfacilitytypevalues CreditFacilityType?;
    # >
    # * `AvailabilityCommission` - 
    common:Creditfacilityratetypevalues CreditFacilityRateType?;
    # CreditFacilityNumber
    common:Identifier CreditFacilityNumber?;
    # CreditFacilityAmount
    common:Amount CreditFacilityAmount?;
    # Frequency at which the fee is charged
    # StandingOrderFrequency
    common:Frequency StandingOrderFrequency?;
    # The purpose of a standing order
    # StandingOrderPurpose
    string StandingOrderPurpose?;
    # Amount of card payment
    common:Amount StandingOrderAmount?;
    # StandingOrderCurrency
    common:Currencycode StandingOrderCurrency?;
    # StandingOrderTargetAccountOwner
    common:Involvedparty StandingOrderTargetAccountOwner?;
    # The identifier of account like Account Number.
    # StandingOrderTargetAccountIdentification
    common:Accountidentification StandingOrderTargetAccountIdentification?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    # StandingOrderTargetAccountBank
    common:Involvedparty StandingOrderTargetAccountBank?;
    # StandingOrderSourceAccount
    common:Account StandingOrderSourceAccount?;
    # StandingOrderValidityPeriod
    common:Datetimeperiod StandingOrderValidityPeriod?;
    # Key dates associated with the directory entry (e.g. open date, refresh date).
    # StandingOrderDay
    common:Datetime StandingOrderDay?;
    # >
    # * `UserDefinedStandingOrder` - Liquidity transfer standing order type, that has been customised or defined to the specific need of the user.(ISO20022)
    # * `PredefinedStandingOrder` - Liquidity transfer standing order type, as predefined in the system. (ISO20022)
    common:Standingordertypevalues StandingOrderType?;
    # StandingOrderIdentification
    common:Identifier StandingOrderIdentification?;
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
    common:Arrangementtypevalues StandingOrderArrangementType?;
    # >
    # * `FirstPaymentDateTime` - The date on which the first payment for a Standing Order schedule will be made. (Open Banking)
    # * `NextPaymentDateTime` - The date on which the next payment for a Standing Order schedule will be made. (Open Banking)
    # * `LastPaymentDateTime` - The date on which the last (most recent) payment for a Standing Order schedule was made. (Open Banking)
    # * `FinalPaymentDateTime` - The date on which the final payment for a Standing Order schedule will be made. (Open Banking)
    common:Standingorderdatetimetypevalues StandingOrderDateType?;
    # Number of the payments that will be made in completing this frequency sequence including any executed since the sequence start date. (Open Banking)
    # StandingOrderNumberOfPayments
    string StandingOrderNumberOfPayments?;
    # Key dates associated with the directory entry (e.g. open date, refresh date).
    common:Datetime StandingOrderDate?;
    # The tracked status (e.g. under construction or repair, inhabited, vacant).
    # StandingOrderStatus
    common:Status StandingOrderStatus?;
    # The time schedule that system services are available for use.
    # StandingOrderSchedule
    common:Schedule StandingOrderSchedule?;
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
    common:Paymentservicetypevalues ServiceType?;
    # PaymentDate
    common:Paymentdatetime PaymentDate?;
    # PaymentPeriod
    common:Datetimeperiod PaymentPeriod?;
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
    common:Paymentpurposevalues PaymentPurpose?;
    # Amount of the payment (requested to be paid)
    # PaymentAmountAndCurrency
    common:Paymentamountandcurrency PaymentAmountAndCurrency?;
    # >
    # * `Cheque` - Written order to a bank to pay a certain amount of money from one person to another person.
    # * `Credittransfer` - Transfer of an amount of money in the books of the account servicer.
    # * `Directdebit` - Collection of an amount of money from the debtor's bank account by the creditor. The amount of money and dates of collections may vary.
    # * `Transferadvice` - Transfer of an amount of money in the books of the account servicer. An advice should be sent back to the account owner.
    # * `Direct` - Direct method.
    # * `Classical` - Classical method.
    common:Paymentmethodtypevalues PaymentMethod?;
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
    common:Paymenttypevalues PaymentType?;
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
    common:Paymenttimevalues PaymentTime?;
    # >
    # * `Fax` - Remittance advice information must be faxed.
    # * `Electronicdatainterchange` - Remittance advice information must be sent through Electronic Data Interchange (EDI).
    # * `Uniformresourceidentifier` - Remittance advice information needs to be sent to a Uniform Resource Identifier (URI). URI is a compact string of characters that uniquely identify an abstract or physical resource. URI's are the super-set of identifiers, such as URLs, email addresses, ftp sites, etc, and as such, provide the syntax for all of the identification schemes.
    # * `Email` - Remittance advice information must be sent through e-mail.
    # * `Post` - Remittance advice information must be sent through postal services.
    # * `SMS` - Remittance advice information must be sent through by phone as a short message service (SMS).
    common:Remittancedeliverymethodtypevalues RemittanceDeliveryMethod?;
    # Address to which the first agent is to send the remittance information. (ISO20022)
    # RemittanceLocation
    common:Contactpoint RemittanceLocation?;
    # An identifier that allows to uniquely refer to a Payment Transaction.
    # PaymentIdentification
    common:Paymentidentification PaymentIdentification?;
    # The time schedule that system services are available for use.
    # PaymentSchedule
    common:Schedule PaymentSchedule?;
    # Frequency at which the fee is charged
    # PaymentFrequency
    common:Frequency PaymentFrequency?;
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
};

# >
# * `PaymentInstruction` - 
# * `IssuingInstruction` - 
# * `BookingInstruction` - 
# * `CollateralAllocationInstruction` - 
# * `AmendmentInstruction` - 
# * `TerminationInstruction` - 
# >
# * `DisputedCharges` - 
# * `MerchantFraud` - 
public type Cardcasetypevalues "DisputedCharges"|"MerchantFraud";

# Complete work tasks following a defined procedure in support of general office activities and product and service delivery within Card Case. 
public type CardCaseProcedure record {
    # >
    # * `DisputedCharges` - 
    # * `MerchantFraud` - 
    Cardcasetypevalues CardCaseType?;
    # Reference to a specific product instance associated with the card case
    common:ProductAgreement ProductInstanceReference?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    # CustomerReference
    common:Involvedparty CustomerReference?;
    # Reference to the complete contact record assembled during the contact where the card case was raised if appropriate
    # CustomerContactRecordReference
    common:CustomerContact CustomerContactRecordReference?;
    # Place where the merchant actually performed the transaction. (ISO20022)
    # CaseLocation
    common:Location CaseLocation?;
    # The time the service was requested
    # Date
    DateTime Date?;
    # Business unit responsible for the card case resolution actions
    common:BusinessUnit EmployeeBusinessUnitReference?;
    # Reference to the card transaction for the consolidation
    # CardTransactionReference
    CardPaymentTransaction CardTransactionReference?;
    # Reference to the card transaction for the consolidation
    CardPaymentTransaction CardTransactionRecord?;
    # Reference to a specific product instance associated with the card case
    common:ProductAgreement CardTransactionProductInstanceReference?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    # CardHolderReference
    common:Involvedparty CardHolderReference?;
    # Reference to the issued device submitted to authorize the transaction (e.g. card number)
    # CardTransactionIssuedDeviceReference
    IssuedDevice CardTransactionIssuedDeviceReference?;
    # Reference to the network the card transaction is handled by as recorded with the transaction
    CardNetwork CardTransactionNetworkReference?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty CardTransactionIssuingBankReference?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    # CardTransactionMerchantAcquiringBankReference
    common:Involvedparty CardTransactionMerchantAcquiringBankReference?;
    # >
    # * `FinancialTransaction` - 
    # * `BusinessTransaction` - 
    # * `BankingTransaction` - 
    # * `AccountingTransaction` - 
    # * `BookingTransaction` - 
    # * `AllocationTransaction` - 
    # * `DeliveryTransaction` - 
    # * `ProductionTransaction` - 
    common:Transactiontypevalues CardTransactionType?;
    # CardTransactionCurrency
    common:Currencycode CardTransactionCurrency?;
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
    common:Amounttypevalues CardTransactionAmountType?;
    # Amount of card payment
    # CardTransactionAmount
    common:Amount CardTransactionAmount?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    # CardTransactionMerchantReference
    common:Involvedparty CardTransactionMerchantReference?;
    # Place where the merchant actually performed the transaction. (ISO20022)
    # CardTransactionLocationReference
    common:Location CardTransactionLocationReference?;
    # Reference to a specific product instance associated with the card case
    # CardTransactionProductandServiceReference
    common:ProductAgreement CardTransactionProductandServiceReference?;
    # The time the service was requested
    # CardTransactionDateandTime
    DateTime CardTransactionDateandTime?;
    # The applied currency conversion charge
    FeeArrangement CardTransactionFXConversionCharge?;
    # The applied currency conversion charge
    FeeArrangement CardTransactionInterchargeFee?;
    # Details the reference, amount, timestamp of the transaction authorization
    Authorization CardTransactionAuthorizationRecord?;
    # The time schedule that system services are available for use.
    common:Schedule CardCaseResolutionSchedule?;
};

# >
# * `Cashback` - Cash-back amount.
# * `Gratuity` - Gratuity amount.
# * `Fees` - Fees.
# * `Rebates` - Global rebate of the transaction. This amount is counted as a negative amount.
# * `Valueaddedtax` - Value added tax amount.
# * `Actual` - Actual amount.
# * `Replacement` - Replacement amount.
# * `Maximum` - Maximum amount (the final amount must be less or equal).
# * `Default` - Default amount.
# * `Estimated` - Estimated amount (the final amount could be above or below).
# * `Original` - Original amount authorised during the real-time authorisation process.
# * `Surcharge` - Extra fee for a purchase or a withdrawal.
# * `Servicefee` - Service fee.
# * `Interchangefee` - Interchange fee.
# * `Discount` - Discount, rebate or voucher, related to loyalty programs. This amount is counted as a negative amount.
# * `Atmcommissionfee` - Commission that the issuer will charge to the cardholder, which should be shown and accepted by the cardholder before the money is disbursed.
# * `Authorisedamount` - Transaction amount that has been authorised.
# * `Cardremainingbalance` - Remaining allowed amount for this type of transaction with this card, after the transaction, until the end of the card limit period.
# * `Maximumallowedamount` - Maximum amount allowed for the transaction in the transaction amount currency if the transaction amount of the request was declined.
# * `Minimumallowedamount` - Minimum amount allowed in the TransactionAmount currency if the transaction amount of the request was declined.
# * `Requestedamount` - Transaction amount that has been requested to be authorised.
# * `Issuerfees` - Fees amount from the card issuer.
# * `Issuercommission` - Commission from the card issuer.
# * `Interchangefees` - Interchange fees.
# * `Processingfees` - Processing fees.
# * `Currencyconversionfees` - Currency conversion fees.
# * `Internationalserviceassessmentfees` - International service assessment fees.
# * `Commission` - Commission, for example for DCC (Dynamic Currency Conversion) transactions.
# * `Donation` - Donation amount.
# * `Tax` - Taxes applicable to the transaction.
# * `Incremental` - Incremental amount for reservation.
# * `Decremental` - Decremental amount for reservation.
# * `Reserved` - Reserved or updated reserved amount for reservation.
# * `Confirmedamount` - Actual amount that has been paid to the ultimate beneficiary, after all charges etc... have been deducted.
# * `Instructedamount` - Amount of money to be moved between the debtor (ordering customer) and creditor, before deduction of charges, expressed in the currency as ordered by the initiating party.
# * `Atmaccessfee` - Fee for giving access to an ATM.
# * `Cardholderbillingfee` - Fee related to a cardholder billing.
# * `Clearingfee` - Fee related to a clearing transaction.
# * `Credittransactionfee` - Fee related to a credit transaction.
# * `Cumulative` - Contains the total amount of all authorisations related to the same cardholder purchase activities. Example: total of all incremental or splitted shipment authorisations for the same purchase.
# * `Debittransactionfee` - Fee related to a debit transaction.
# * `Extra` - Extra charges (for example,  minibar, etc.)
# * `Foreignexchangefee` - Fee related to a foreign exchange transaction.
# * `Fundstransfer` - Fee related to a funds transfer transaction
# * `Instantpaymentfee` - Fee related to an instant payment.
# * `Instanttransferfee` - Fee related to an instant transfer transaction.
# * `Issuercardholderfee` - Fee applied by the card issuer to the cardholder.
# * `Limit` - Limit of amounts for the transaction.
# * `Othernational` - Other type of amount defined at national level.
# * `Otherprivate` - Other type of amount defined at private level.
# * `Reconciliationfee` - Fee related to a reconciliation transaction.
# * `Settlementfee` - Fee related to a settlement transaction.
# * `Transactionfee` - Fee related to a transaction.
# * `Anticipated` - Amount anticipated for the transaction
# * `Baggage` - Baggage related fees
# * `Chargedtocard` - Amount that has been charged to card account
# * `Clearingpriorityfee` - Fee related to a clearing transaction for a given priority.
# * `Dental` - Amount qualified for dental prescriptions
# * `Deposit` - Deposit amount.
# * `Fundstransferfee` - Fee related to a funds transfer.
# * `Otherqualifiedmedical` - Amount qualified for other medical expenses
# * `Prescription` - Amount for medical prescription
# * `Proxy` - Substitute for an amount to be authorised.
# * `Requestedcashback` - Requested cashback amount
# * `Settlementpriorityfee` - Fee related to a settlement transaction for a given priority.
# * `Totalhealthcare` - Total healthcare amount
# * `Transit` - Amount in transit
# * `Vision` - Amount qualified for medical vision expenses
# * `Connect` - Telephone connection-related charge
# * `Data` - Data communication related charges
# * `Exchangeticket` - Fee for exchanging a ticket (modifying an itinerary)
# * `Exchangeticketfee` - Fee for exchanging a ticket (modifying an itinerary)
# * `Fare` - Amount of fare
# * `Foodbeverage` - Amount of food and beverages
# * `Insurance` - Insurance charges
# * `Longdistance` - Charges related to a long distance call.
# * `Miscellaneous` - Miscellaneous charges not elsewhere defined
# * `Phone` - Phone charges
# * `Prepayment` - Amount of prepayment
# * `Total` - Total amount of charges
# * `Usage` - Telephone usage-related charge
# * `Predcc` - Local amount before DCC (Dynamic Currency Conversion) was applied.
# * `Upgrade` - Amount for an upgrade.
# * `Clubfee` - Amount for club fee.
# * `Cargo` - Cargo Amount.
# * `Dutyfree` - Duty free amount
# * `Ticketdelivery` - Ticket delivery amount.
# * `Petcarrier` - Pet carrier.
# * `Tourorder` - Tour order amount.
# * `Minimuminterchangefee` - Minimum interchange fee applicable.
# * `Maximuminterchangefee` - Maximum applicable interchange fee.
# * `Cashbackinterchangefee` - Interchange fee applicable to cash back amount.
public type Amountqualifiertypevalues "Cashback"|"Gratuity"|"Fees"|"Rebates"|"Valueaddedtax"|"Actual"|"Replacement"|"Maximum"|"Default"|"Estimated"|"Original"|"Surcharge"|"Servicefee"|"Interchangefee"|"Discount"|"Atmcommissionfee"|"Authorisedamount"|"Cardremainingbalance"|"Maximumallowedamount"|"Minimumallowedamount"|"Requestedamount"|"Issuerfees"|"Issuercommission"|"Interchangefees"|"Processingfees"|"Currencyconversionfees"|"Internationalserviceassessmentfees"|"Commission"|"Donation"|"Tax"|"Incremental"|"Decremental"|"Reserved"|"Confirmedamount"|"Instructedamount"|"Atmaccessfee"|"Cardholderbillingfee"|"Clearingfee"|"Credittransactionfee"|"Cumulative"|"Debittransactionfee"|"Extra"|"Foreignexchangefee"|"Fundstransfer"|"Instantpaymentfee"|"Instanttransferfee"|"Issuercardholderfee"|"Limit"|"Othernational"|"Otherprivate"|"Reconciliationfee"|"Settlementfee"|"Transactionfee"|"Anticipated"|"Baggage"|"Chargedtocard"|"Clearingpriorityfee"|"Dental"|"Deposit"|"Fundstransferfee"|"Otherqualifiedmedical"|"Prescription"|"Proxy"|"Requestedcashback"|"Settlementpriorityfee"|"Totalhealthcare"|"Transit"|"Vision"|"Connect"|"Data"|"Exchangeticket"|"Exchangeticketfee"|"Fare"|"Foodbeverage"|"Insurance"|"Longdistance"|"Miscellaneous"|"Phone"|"Prepayment"|"Total"|"Usage"|"Predcc"|"Upgrade"|"Clubfee"|"Cargo"|"Dutyfree"|"Ticketdelivery"|"Petcarrier"|"Tourorder"|"Minimuminterchangefee"|"Maximuminterchangefee"|"Cashbackinterchangefee";

# Reference to a specific product instance associated with the card case
# >
# * `OperatingBudget` - 
# * `FinancialBudget` - 
# * `ResourceBudget` - 
# The main worsteps to be followed in th eexecution of the procedure
#
# Examples: Invoice generation
public type Consolidation record {
    # Reference to the card transaction for the consolidation
    CardPaymentTransaction ConsolidationCardTransactionRecordReference?;
    # The record of a specific resolution task
    common:Task ConsolidationTaskRecord?;
    # The instruction message to the merchant to provide card transaction related paperwork, includes issued device details, transaction identification information and the retrieval reason
    # ConsolidationInstruction
    CardPaymentInstruction ConsolidationInstruction?;
    # Document copy/content - legal or significant documents created & referenced
    common:Document CorrespondenceReference?;
    # The document reference for associated documents
    # DocumentDirectoryEntryInstanceReference
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # Work documentation, forms and schedules produced and referenced during the analysis
    # ConsolidationTaskWorkProducts
    common:Workproduct ConsolidationTaskWorkProducts?;
    # The outcome of the consolidation workstep
    # ConsolidationTaskResult
    string ConsolidationTaskResult?;
};

# The main worsteps to be followed in th eexecution of the procedure
#
# Examples: Invoice generation
public type Chargeback record {
    # Reference to the card transaction for the consolidation
    CardPaymentTransaction ChargebackCardTransactionRecordReference?;
    # The instruction to book chargeback for the transaction - could be partial chargeback
    ChargebackInstruction ChargebackInstruction?;
};

# Reference to the network the card transaction is handled by as recorded with the transaction
public type CardNetwork record {
    # Network for handling the card based transaction (e.g. Visa, MC, AMEX, Diners, etc.)
    #
    # A card network are networks of issuing and acquiring banks through which payment cards of some certain brand are processed. two types of card networks can be pointed out, namely, credit card associations (Visa, MasterCard, Discover, Amex, etc.) and PINless debit card networks (NYCE, PULSE, Maestro, Interlink, Cirrus, etc.).
    #
    # Card networks are financial services companies that enables, processes and settles payments between card issuing banks and merchant banks worldwide. Examples are Visa, MasterCard, Discover, RuPay etc.
    #
    # A card network is a system of connecting merchants and card issuers.  A middle person that collects funds from card issuer and pays it to the merchant.  Visa and MasterCard are examples of card networks.
    string CardNetwork?;
};

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
# Identification of the transaction assigned by the initiator of the request. For instance refers to POITransactionIdentification if used inside an authorisation request or to SaleTransactionIdentification if the message is a payment request initiated by a sale system. (ISO20022)
public type Cardpaymenttransactionidentification record {
    # CardPaymentTransactionIdentification
    common:Identifier CardPaymentTransactionIdentification?;
    # >
    # * `Issuercitidentification` - Identification, given by the Issuer, of the transaction processed with the cardholder that legitimates this merchant initiated transaction. (ISO20022)
    # * `Merchantcitidentification` - Identification, given by the merchant, of the transaction processed with the cardholder that legitimates this merchant initiated transaction. (ISO20022)
    Cardpaymenttransactionidentificationtypevalues CardPaymentTransactionIdentificationType?;
};

# >
# * `Initiate` - 
# * `Execute` - 
# * `Create` - 
# * `Transfer` - 
# * `Pay` - 
# * `Deliver` - 
# * `Apply` - 
# * `Calculate` - 
# >
# * `Merchant` - Merchant environment.
# * `Private` - Private environment.
# * `Public` - Public environment.
# * `Branch` - Bank environment.
# * `Other` - Other environments, for instance a mall or an airport.
public type Transactionenvironmenttypevalues "Merchant"|"Private"|"Public"|"Branch"|"Other";

# >
# * `Realtimegrosssettlementsystem` -
# * `Realtimenetsettlementsystem` -
# * `Masspaymentnetsystem` -
# * `Booktransfer` -
public type Clearingchanneltypevalues "Realtimegrosssettlementsystem"|"Realtimenetsettlementsystem"|"Masspaymentnetsystem"|"Booktransfer";
