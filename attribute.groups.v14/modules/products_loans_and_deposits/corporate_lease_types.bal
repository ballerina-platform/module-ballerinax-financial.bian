import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Reference to the party who is involved in Corporate Lease Arrangement ||
# |
public type leaseagreement record {
    # >
    # * `FinancingLease` - The long-term lease of a capital asset. To the lessee, a capital lease is the same as owning the asset. Accounting rules require that the leased asset and the present value of the lease payments be recorded on the lessee's balance sheet. For the lessor, a capital lease is treated as a sale of the asset.
    # https://financial-dictionary.thefreedictionary.com/capital+lease
    #
    # A capital lease is a contract entitling a renter to the temporary use of an asset, and such a lease has the economic characteristics of asset ownership for accounting purposes.
    # The capital lease requires a renter to book assets and liabilities associated with the lease if the rental contract meets specific requirements.
    # An operating lease is different in structure and accounting treatment from a capital lease. An operating lease is a contract that allows for the use of an asset but does not convey any ownership rights of the asset.
    # https://www.investopedia.com/terms/c/capitallease.asp
    #
    #
    # A finance lease (also known as a capital lease or a sales lease) is a type of lease in which a finance company is typically the legal owner of the asset for the duration of the lease, while the lessee not only has operating control over the asset, but also some share of the economic risks and returns from the change in the valuation of the underlying asset. 
    # https://en.wikipedia.org/wiki/Finance_lease
    #
    # Financial Leasing is an alternative way of financing whereby a licensed leasing company (the Lessor) purchases an asset on behalf of its customer (the Lessee) in return for a contractually agreed series of payments which usually include an element of interest. The lessor maintains ownership of the asset while the lessee enjoys the use of the asset for the duration of the lease agreement, usually accompanied by an option to buy the asset at the end of the contract. The lessee bears all costs and risks associated with the use of the leased asset.
    # https://www2.deloitte.com/cy/en/pages/financial-services/articles/finance-leasing.html
    #
    # * `OperatingLease` - Short-term, cancelable lease. A type of lease in which the contract period is shorter than the life of the equipment, and the lessor pays all maintenance and servicing costs.
    # https://financial-dictionary.thefreedictionary.com/operating+lease 
    #
    #
    # An operating lease is a contract that permits the use of an asset but does not convey ownership rights of the asset. 
    # https://www.investopedia.com/terms/o/operatinglease.asp#:~:text=An%20operating%20lease%20is%20a,on%20a%20company's%20balance%20sheet.
    leasingtypevalues LeaseAgreementType?;
};

public type CorporateLeaseFacilityOk record {|
    *http:Ok;
    CorporateLeaseFacility body;
|};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility  within Corporate Lease. 
# Example: Perform the scheduled (e.g. statements, standing orders) and ad-hoc/requested (e.g. balance inquiries, fund transfers) fulfillment tasks for a customer current account facility.
public type CorporateLeaseFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Corporate Lease Arrangement ||
    # |
    common:featuretypevalues CorporateLeaseFacilityParameterType?;
    # A selected optional business service as subject matter of Corporate Lease Arrangement ||
    # |
    common:feature CorporateLeaseFacilitySelectedOption?;
    # The type of Corporate Lease Arrangement ||
    # |
    common:loanproducttypevalues CorporateLeaseFacilityType?;
    # Timetable to fulfill Corporate Lease Arrangement ||
    # |
    common:schedule CorporateLeaseFacilitySchedule?;
    # The status of Corporate Lease Arrangement Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status CorporateLeaseFacilityStatus?;
    # Reference to the party who is involved in Corporate Lease Arrangement ||
    # |
    leaseagreement CorporateLeaseFacilityReference?;
    # The curreny which is arranged in Corporate Lease Arrangement CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode CorporateLeaseFacilityCurrency?;
    # Reference to the regulation which is defined in Corporate Lease Arrangement ||
    # |
    common:Regulation CorporateLeaseFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Corporate Lease Arrangement ||
    # |
    common:Rulesettypevalues CorporateLeaseFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Corporate Lease Arrangement in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction CorporateLeaseFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Corporate Lease Arrangement, are entered. ||
    # |
    common:text CorporateLeaseFacilityBookingLocation?;
    # The type of account which is linked to Corporate Lease Arrangement OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues CorporateLeaseFacilityAccountType?;
    # Reference to the account which is linked to Corporate Lease Arrangement Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account CorporateLeaseFacilityAccountReference?;
};

# >
# * `FinancingLease` - The long-term lease of a capital asset. To the lessee, a capital lease is the same as owning the asset. Accounting rules require that the leased asset and the present value of the lease payments be recorded on the lessee's balance sheet. For the lessor, a capital lease is treated as a sale of the asset.
# https://financial-dictionary.thefreedictionary.com/capital+lease
#
# A capital lease is a contract entitling a renter to the temporary use of an asset, and such a lease has the economic characteristics of asset ownership for accounting purposes.
# The capital lease requires a renter to book assets and liabilities associated with the lease if the rental contract meets specific requirements.
# An operating lease is different in structure and accounting treatment from a capital lease. An operating lease is a contract that allows for the use of an asset but does not convey any ownership rights of the asset.
# https://www.investopedia.com/terms/c/capitallease.asp
#
#
# A finance lease (also known as a capital lease or a sales lease) is a type of lease in which a finance company is typically the legal owner of the asset for the duration of the lease, while the lessee not only has operating control over the asset, but also some share of the economic risks and returns from the change in the valuation of the underlying asset. 
# https://en.wikipedia.org/wiki/Finance_lease
#
# Financial Leasing is an alternative way of financing whereby a licensed leasing company (the Lessor) purchases an asset on behalf of its customer (the Lessee) in return for a contractually agreed series of payments which usually include an element of interest. The lessor maintains ownership of the asset while the lessee enjoys the use of the asset for the duration of the lease agreement, usually accompanied by an option to buy the asset at the end of the contract. The lessee bears all costs and risks associated with the use of the leased asset.
# https://www2.deloitte.com/cy/en/pages/financial-services/articles/finance-leasing.html
#
# * `OperatingLease` - Short-term, cancelable lease. A type of lease in which the contract period is shorter than the life of the equipment, and the lessor pays all maintenance and servicing costs.
# https://financial-dictionary.thefreedictionary.com/operating+lease 
#
#
# An operating lease is a contract that permits the use of an asset but does not convey ownership rights of the asset. 
# https://www.investopedia.com/terms/o/operatinglease.asp#:~:text=An%20operating%20lease%20is%20a,on%20a%20company's%20balance%20sheet.
public type leasingtypevalues "FinancingLease"|"OperatingLease";
