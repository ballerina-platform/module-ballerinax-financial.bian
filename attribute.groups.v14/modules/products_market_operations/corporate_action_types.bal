import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type SecuritySpinOffActionOk record {|
    *http:Ok;
    SecuritySpin\-OffAction body;
|};

public type SecurityDividendPaymentOk record {|
    *http:Ok;
    SecurityDividendPayment body;
|};

public type SecuritySpin\-OffAction record {
    common:condition Preconditions?;
    common:involvedparty BusinessUnitorEmployeeReference?;
    common:schedule Schedule?;
    common:businessservice BusinessService?;
    common:condition Postconditions?;
    common:procedure CorporateActionProcedureReference?;
    common:workstep SecuritySpin\-OffActionWorkstepReference?;
    common:text SecuritySpin\-OffActionWorkstepType?;
};

# CorporateActionEvent|CorporateActionEvent (https://www.iso20022.org/standardsrepository/type/CorporateActionEvent)|Standard|ISO20022 BM ()
public type corporateaction record {
    # >
    # * `Active` - The CA event is active. (ISO20022)
    # * `Deactivated` - The CA event is deactivated. The clients cannot send instruction anymore. (ISO20022)
    # * `Expired` - The CA event is expired, no more processing, claims, transformations take place. (ISO20022)
    # * `Cancelled` - The CA event is cancelled. (ISO20022)
    # * `Withdrawn` - The CA event is withrawn, ie, cancelled by the market. (ISO20022)
    # * `Inactive` - Option is not active and can no longer be responded to. Any responses already processed against this option will remain valid, eg, expired option. (ISO20022)
    corporateactionstatustypevalues CorporateActionStatus?;
    # >
    # * `Dividendreinvestment` - Dividend payment where holders can keep cash or have the cash reinvested in the market by the issuer into additional shares in the issuing company. To be distinguished from DVOP as the company invests the dividend in the market rather than creating new share capital in exchange for the dividend.
    # * `Accumulation` - Funds related event in which the income (for example accumulation units) that accrues during an accounting period is retained within the fund instead of being paid away to investors. The retained income is nonetheless deemed to have been distributed to investors for tax purposes.
    # * `Activetradingstatus` - Trading in the security has commenced or security has been re-activated after a suspension in trading.
    # * `Annualgeneralmeeting` - Meeting Annual general meeting.
    # * `Attachment` - Combination of different security types to create a unit. Units are usually comprised of warrants and bonds or warrants and equities. Securities may be combined at the request of the security holder or based on market convention.
    # * `Bankruptcy` - Legal status of a company unable to pay creditors. Bankruptcy usually involves a formal court ruling. Securities may become valueless.
    # * `Bonddefault` - Failure by the company to perform obligations defined as default events under the bond agreement and that have not been remedied.
    # * `Bonusissue` - Bonus or capitalisation issue. Security holders receive additional assets free of payment from the issuer, in proportion to their holding.
    # * `Callonintermediatesecurities` - Call or exercise on nil paid securities or intermediate securities resulting from an intermediate securities distribution (RHDI). This code is used for the second event, when an intermediate securities' issue (rights/coupons) is composed of two events, the first event being the distribution of intermediate securities.
    # * `Capitaldistribution` - Corporate event pays shareholders an amount in cash issued from the capital account. There is no reduction to the face value of a single share (or the share has no par value). The number of circulating shares remains unchanged.
    # * `Capitalgainsdistribution` - Event is the distribution of profits resulting from the sale of securities. Shareholders of mutual funds, unit trusts, or SICAVs are recipients of capital gains distributions and are often reinvested in additional shares of the fund.
    # * `Capitalisation` - Increase of the current principal of a debt instrument without increasing the nominal value. It normally arises from the incorporation of due but unpaid interest into the principal. This is commonly done by increasing the pool factor value, for example, capitalisation, and negative amortisation.
    # * `Cashdistributionfromnoneligiblesecuritiessales` - Distribution to shareholders of cash resulting from the selling of non-eligible securities, for example, in the frame of a depositary receipt program.
    # * `Cashdividend` - Distribution of cash to shareholders, in proportion to their equity holding. Ordinary dividends are recurring and regular. Shareholder must take cash and may be offered a choice of currency.
    # * `Change` - Information regarding a change further described in the corporate action details.
    # * `Classactionproposedsettlement` - Situation where interested parties seek restitution for financial loss. The security holder may be offered the opportunity to join a class action proceeding and would need to respond with an instruction.
    # * `Companyoption` - Company option may be granted by the company, allowing the holder to take up shares at some future date(s) at a pre arranged price in the company. A company may not grant options which enable the holder to take up unissued shares at a time which is five or more years from the date of the grant. Option holders are not members of a company. They are contingent creditors of a company and hence may, in some instances, be entitled to vote on and be bound by a scheme of arrangement between the creditors and the company. As many options have multiple exercise periods a company option will either lapse or carry on to the next expiry date.
    # * `Consent` - Procedure that aims to obtain consent of holder to a proposal by the issuer or a third party without convening a meeting. For example, consent to change the terms of a bond.
    # * `Conversion` - Conversion of securities (generally convertible bonds or preferred shares) into another form of securities (usually common shares) at a pre-stated price/ratio.
    # * `Couponstripping` - Coupon stripping is the process whereby interest coupons for future payment dates are separated from the security corpus that entitles the holder to the principal repayment.
    # * `Courtmeeting` - Announcement of a meeting at a Court.
    # * `Creditevent` - Occurrence of credit derivative for which the issuer of one or several underlying securities is unable to fulfill its financial obligations (as defined in terms and conditions).
    # * `Decreaseinvalue` - Reduction of face value of a single share or the value of fund assets. The number of circulating shares/units remains unchanged. This event may include a cash payout to holders.
    # * `Detachment` - Separation of components that comprise a security, for example, usually units comprised of warrants and bond or warrants and equity. Units may be broken up at the request of the security holder or based on market convention.
    # * `Disclosure` - Requirement for holders or beneficial owners to disclose their name, location and holdings of any issue to the issuer.
    # * `Dividendoption` - Distribution of a dividend to shareholders with a choice of benefit to receive. Shareholders may choose to receive shares or cash. To be distinguished from DRIP as the company creates new share capital in exchange for the dividend rather than investing the dividend in the market.
    # * `Drawing` - Securities are redeemed in part before the scheduled final maturity date. It is done without any pool factor reduction. The redemption is reflected in a debit of the face amount (FAMT). Drawing is distinct from partial call since drawn bonds are chosen by lottery. Therefore, not every holder is affected in the same way.
    # * `Dutchauction` - Action by a party wishing to acquire a security. Holders of the security are invited to make an offer to sell, within a specific price range. The acquiring party will buy from the holder with lowest offer.
    # * `Earlyredemption` - This includes drawing, partial and full call, put.
    # * `Exchange` - Exchange of holdings for other securities and/or cash. The exchange can be either mandatory or voluntary involving the exchange of outstanding securities for different securities and/or cash. For example "exchange offer", "capital reorganisation" or "funds separation".
    # * `Exchangeoption` - Event is an option for the shareholders to exchange their securities for other securities and/or cash. Exchange options are mentioned in the terms and conditions of a security and are valid during the whole lifetime of a security.
    # * `Extraordinarygeneralmeeting` - Extraordinary or Special General Meeting. Extraordinary or special general meeting.
    # * `Finalmaturity` - Redemption of an entire issue outstanding of securities, for example, bonds, preferred equity, funds, by the issuer or its agent, for example, asset manager, at final maturity.
    # * `Fullcall` - Redemption of an entire issue outstanding of securities, for example, bonds, preferred equity, funds, by the issuer or its agent, for example, asset manager, before final maturity.
    # * `Increaseinvalue` - Increase in the face value of a single security. The number of circulating securities remains unchanged.
    # * `Information` - Information provided by the issuer having no accounting/financial impact on the holder.
    # * `Instalmentcall` - Instalment towards the purchase of equity capital, subject to an agreement between an issuer and a purchaser.
    # * `Interestpayment` - Interest payment distributed to holders of an interest bearing asset.
    # * `Interestpaymentwithprincipal` - Event which consists of two components, the decrease of the amortized value of a pool factor security and an interest payment.
    # * `Intermediatesecuritiesdistribution` - Distribution of intermediate securities that gives the holder the right to take part in a future event.
    # * `Liquidationdividend` - Distribution of cash, assets or both. Debt may be paid in order of priority based on preferred claims to assets specified by the security.
    # * `Maturityextension` - As stipulated in the security's Terms and Conditions, the issuer or the holder may prolong the maturity date of a security. After extension, the security details may differ from the original issue. An issuer initiated extension may be subject to holder's approval.
    # * `Merger` - Exchange of outstanding securities, initiated by the issuer which may include options, as the result of two or more companies combining assets, that is, an external, third party company. Cash payments may accompany share exchange.
    # * `Namechange` - Event is a name change. The issuing company changes its name. The event shows the change from old name to new name and may involve surrendering physical shares with the old name to the registrar.
    # * `Nonofficialoffer` - Offers that are not supervised or regulated by an official entity and being offered by a party, for example a broker, usually at a discount price, for example broker offer, mini-tender, mini odd lot offer or third party offer.
    # * `Nonustefradcertification` - Non-US beneficial owner certification requirement for exchange of temporary to permanent notes.
    # * `Oddlotsalepurchase` - Sale or purchase of odd-lots to/from the issuing company, initiated either by the holder of the security or through an offer made by the issuer.
    # * `Ordinarygeneralmeeting` - Ordinary general meeting.
    # * `Otherevent` - Other event, use only when no other event type applies, for example, a new event type.
    # * `Paripassu` - Occurs when securities with different characteristics, for example, shares with different entitlements to dividend or voting rights, become identical in all respects, for example, pari-passu or assimilation. May be scheduled in advance, for example, shares resulting from a bonus may become fungible after a pre-set period of time, or may result from outside events, for example, merger, reorganisation, issue of supplementary tranches.
    # * `Partialredemptionwithoutpoolfactorreduction` - Securities are redeemed in part before their scheduled final maturity date. It is done without any pool factor reduction. The redemption is reflected in a debit of the face amount (FAMT).
    # * `Partialredemptionwithpoolfactorreduction` - Securities are redeemed in part before their scheduled final maturity date. The redemption is reflected in a pool factor reduction. No movement of securities occurs.
    # * `Payinkind` - Interest payment, in any kind except cash, distributed to holders of an interest bearing asset.
    # * `Placeofincorporation` - Changes in the state of incorporation for US companies and changes in the place of incorporation for foreign companies. Where shares need to be registered following the incorporation change, the holder(s) may have to elect the registrar.
    # * `Prefunding` - Also called partial defeasance. Issuer has money set aside to redeem a portion of an issue and the indenture states that the securities could be called earlier than the stated maturity.
    # * `Priorityissue` - Form of open or public offer where, due to a limited amount of securities available, priority is given to existing shareholders.
    # * `Putredemption` - Early redemption of a security at the election of the holder subject to the terms and condition of the issue with no reduction in nominal value.
    # * `Redenomination` - Event by which the unit (currency and/or nominal) of a security is restated, for example, nominal/par value of security in a national currency is restated in another currency.
    # * `Remarketing` - Purchase and sale of remarketed preferred equities/bonds through the negotiation of interest rate between the issuers and the holders.
    # * `Remarketingagreement` - Purchase and sale of remarketed preferred equities/bonds through the negotiation of interest rate between the issuers and the holders.
    # * `Repurchaseoffer` - Repurchase offer / issuer bid / reverse rights. Offer to existing holders by the issuing company to repurchase its own securities. The objective of the offer is to reduce the number of outstanding securities.
    # * `Reversestocksplit` - Decrease in a company's number of outstanding equities without any change in the shareholder's equity or the aggregate market value at the time of the split. Equity price and nominal value are increased accordingly.
    # * `Rightsissue` - Offer to holders of a security to subscribe for additional securities via the distribution of an intermediate security. Both processes are included in the same event.
    # * `Scripdividend` - Dividend or interest paid in the form of scrip.
    # * `Securitiesholdersmeeting` - Ordinary or annual or extraordinary or special general meeting.
    # * `Sharespremiumdividend` - Corporate event pays shareholders an amount in cash issued from the shares premium reserve. It is similar to a dividend but with different tax implications.
    # * `Smallestnegotiableunit` - Modification of the smallest negotiable unit of shares in order to obtain a new negotiable unit.
    # * `Spinoff` - Distribution of securities issued by another company. The distributed securities may either be of a newly created or of an existing company. For example, spin-off, demerger, unbundling, divestment.
    # * `Stockdividend` - Dividend paid to shareholders in the form of equities of the issuing corporation.
    # * `Stocksplit` - Increase in a corporation's number of outstanding equities without any change in the shareholder's equity or the aggregate market value at the time of the split. Equity price and nominal value are reduced accordingly.
    # * `Subscription` - Ability for security holders to purchase (additional or new) securities at a certain price, in proportion to their holding.
    # * `Taxonnondistributedproceeds` - Taxable component on non-distributed proceeds, for example, Australian deemed income or US 871m income regulation.
    # * `Taxreclaim` - Event related to tax reclaim activities.
    # * `Tender` - Offer made to holders by a third party, requesting them to sell (tender) or exchange their securities.
    # * `Tradingstatusdelisted` - Security is no longer able to comply with the listing requirements of a stock exchange and is removed from official board quotation.
    # * `Tradingstatussuspended` - Trading in the security has been suspended.
    # * `Warrantexercise` - Option offered to holders to buy (call warrant) or to sell (put warrant) a specific amount of stock, cash, or commodity, at a predetermined price, during a predetermined period of time (which usually corresponds to the life of the issue).
    # * `Withholdingtaxreliefcertification` - Certification process for withholding tax reduction or exemption based on the tax status of the holder.
    # * `Worthless` - Booking out of valueless securities.
    corporateactiontypevalues CorporateActionType?;
    # >
    # * `TradingDate` - Date/time at which the deal (rights) was agreed. (ISO20022)
    # * `PariPassuDate` - Date on which security will assimilate, become fungible, or have the same rights to dividends as the parent issue. (ISO20022)
    # * `AnnouncementDate` - Date/time at which the issuer announced that a corporate action event will occur such as the issue of securities or an official meeting. (ISO20022)
    # * `EffectiveDate` - Date/time at which an event is officially effective from the issuer's perspective. (ISO20022)
    # * `LapsedDate` - Date/time at which an event/offer is terminated or lapsed. (ISO20022)
    # * `MarginFixingDate` - Date/time at which the margin rate will be determined . (ISO20022)
    corporateactiondatetimetypevalues CorporateActionDateTime?;
};

# CorporateActionEvent|CorporateActionEvent (https://www.iso20022.org/standardsrepository/type/CorporateActionEvent)|Standard|ISO20022 BM ()
public type corporateactionarrangement record {
    # >
    # * `Dividendreinvestment` - Dividend payment where holders can keep cash or have the cash reinvested in the market by the issuer into additional shares in the issuing company. To be distinguished from DVOP as the company invests the dividend in the market rather than creating new share capital in exchange for the dividend.
    # * `Accumulation` - Funds related event in which the income (for example accumulation units) that accrues during an accounting period is retained within the fund instead of being paid away to investors. The retained income is nonetheless deemed to have been distributed to investors for tax purposes.
    # * `Activetradingstatus` - Trading in the security has commenced or security has been re-activated after a suspension in trading.
    # * `Annualgeneralmeeting` - Meeting Annual general meeting.
    # * `Attachment` - Combination of different security types to create a unit. Units are usually comprised of warrants and bonds or warrants and equities. Securities may be combined at the request of the security holder or based on market convention.
    # * `Bankruptcy` - Legal status of a company unable to pay creditors. Bankruptcy usually involves a formal court ruling. Securities may become valueless.
    # * `Bonddefault` - Failure by the company to perform obligations defined as default events under the bond agreement and that have not been remedied.
    # * `Bonusissue` - Bonus or capitalisation issue. Security holders receive additional assets free of payment from the issuer, in proportion to their holding.
    # * `Callonintermediatesecurities` - Call or exercise on nil paid securities or intermediate securities resulting from an intermediate securities distribution (RHDI). This code is used for the second event, when an intermediate securities' issue (rights/coupons) is composed of two events, the first event being the distribution of intermediate securities.
    # * `Capitaldistribution` - Corporate event pays shareholders an amount in cash issued from the capital account. There is no reduction to the face value of a single share (or the share has no par value). The number of circulating shares remains unchanged.
    # * `Capitalgainsdistribution` - Event is the distribution of profits resulting from the sale of securities. Shareholders of mutual funds, unit trusts, or SICAVs are recipients of capital gains distributions and are often reinvested in additional shares of the fund.
    # * `Capitalisation` - Increase of the current principal of a debt instrument without increasing the nominal value. It normally arises from the incorporation of due but unpaid interest into the principal. This is commonly done by increasing the pool factor value, for example, capitalisation, and negative amortisation.
    # * `Cashdistributionfromnoneligiblesecuritiessales` - Distribution to shareholders of cash resulting from the selling of non-eligible securities, for example, in the frame of a depositary receipt program.
    # * `Cashdividend` - Distribution of cash to shareholders, in proportion to their equity holding. Ordinary dividends are recurring and regular. Shareholder must take cash and may be offered a choice of currency.
    # * `Change` - Information regarding a change further described in the corporate action details.
    # * `Classactionproposedsettlement` - Situation where interested parties seek restitution for financial loss. The security holder may be offered the opportunity to join a class action proceeding and would need to respond with an instruction.
    # * `Companyoption` - Company option may be granted by the company, allowing the holder to take up shares at some future date(s) at a pre arranged price in the company. A company may not grant options which enable the holder to take up unissued shares at a time which is five or more years from the date of the grant. Option holders are not members of a company. They are contingent creditors of a company and hence may, in some instances, be entitled to vote on and be bound by a scheme of arrangement between the creditors and the company. As many options have multiple exercise periods a company option will either lapse or carry on to the next expiry date.
    # * `Consent` - Procedure that aims to obtain consent of holder to a proposal by the issuer or a third party without convening a meeting. For example, consent to change the terms of a bond.
    # * `Conversion` - Conversion of securities (generally convertible bonds or preferred shares) into another form of securities (usually common shares) at a pre-stated price/ratio.
    # * `Couponstripping` - Coupon stripping is the process whereby interest coupons for future payment dates are separated from the security corpus that entitles the holder to the principal repayment.
    # * `Courtmeeting` - Announcement of a meeting at a Court.
    # * `Creditevent` - Occurrence of credit derivative for which the issuer of one or several underlying securities is unable to fulfill its financial obligations (as defined in terms and conditions).
    # * `Decreaseinvalue` - Reduction of face value of a single share or the value of fund assets. The number of circulating shares/units remains unchanged. This event may include a cash payout to holders.
    # * `Detachment` - Separation of components that comprise a security, for example, usually units comprised of warrants and bond or warrants and equity. Units may be broken up at the request of the security holder or based on market convention.
    # * `Disclosure` - Requirement for holders or beneficial owners to disclose their name, location and holdings of any issue to the issuer.
    # * `Dividendoption` - Distribution of a dividend to shareholders with a choice of benefit to receive. Shareholders may choose to receive shares or cash. To be distinguished from DRIP as the company creates new share capital in exchange for the dividend rather than investing the dividend in the market.
    # * `Drawing` - Securities are redeemed in part before the scheduled final maturity date. It is done without any pool factor reduction. The redemption is reflected in a debit of the face amount (FAMT). Drawing is distinct from partial call since drawn bonds are chosen by lottery. Therefore, not every holder is affected in the same way.
    # * `Dutchauction` - Action by a party wishing to acquire a security. Holders of the security are invited to make an offer to sell, within a specific price range. The acquiring party will buy from the holder with lowest offer.
    # * `Earlyredemption` - This includes drawing, partial and full call, put.
    # * `Exchange` - Exchange of holdings for other securities and/or cash. The exchange can be either mandatory or voluntary involving the exchange of outstanding securities for different securities and/or cash. For example "exchange offer", "capital reorganisation" or "funds separation".
    # * `Exchangeoption` - Event is an option for the shareholders to exchange their securities for other securities and/or cash. Exchange options are mentioned in the terms and conditions of a security and are valid during the whole lifetime of a security.
    # * `Extraordinarygeneralmeeting` - Extraordinary or Special General Meeting. Extraordinary or special general meeting.
    # * `Finalmaturity` - Redemption of an entire issue outstanding of securities, for example, bonds, preferred equity, funds, by the issuer or its agent, for example, asset manager, at final maturity.
    # * `Fullcall` - Redemption of an entire issue outstanding of securities, for example, bonds, preferred equity, funds, by the issuer or its agent, for example, asset manager, before final maturity.
    # * `Increaseinvalue` - Increase in the face value of a single security. The number of circulating securities remains unchanged.
    # * `Information` - Information provided by the issuer having no accounting/financial impact on the holder.
    # * `Instalmentcall` - Instalment towards the purchase of equity capital, subject to an agreement between an issuer and a purchaser.
    # * `Interestpayment` - Interest payment distributed to holders of an interest bearing asset.
    # * `Interestpaymentwithprincipal` - Event which consists of two components, the decrease of the amortized value of a pool factor security and an interest payment.
    # * `Intermediatesecuritiesdistribution` - Distribution of intermediate securities that gives the holder the right to take part in a future event.
    # * `Liquidationdividend` - Distribution of cash, assets or both. Debt may be paid in order of priority based on preferred claims to assets specified by the security.
    # * `Maturityextension` - As stipulated in the security's Terms and Conditions, the issuer or the holder may prolong the maturity date of a security. After extension, the security details may differ from the original issue. An issuer initiated extension may be subject to holder's approval.
    # * `Merger` - Exchange of outstanding securities, initiated by the issuer which may include options, as the result of two or more companies combining assets, that is, an external, third party company. Cash payments may accompany share exchange.
    # * `Namechange` - Event is a name change. The issuing company changes its name. The event shows the change from old name to new name and may involve surrendering physical shares with the old name to the registrar.
    # * `Nonofficialoffer` - Offers that are not supervised or regulated by an official entity and being offered by a party, for example a broker, usually at a discount price, for example broker offer, mini-tender, mini odd lot offer or third party offer.
    # * `Nonustefradcertification` - Non-US beneficial owner certification requirement for exchange of temporary to permanent notes.
    # * `Oddlotsalepurchase` - Sale or purchase of odd-lots to/from the issuing company, initiated either by the holder of the security or through an offer made by the issuer.
    # * `Ordinarygeneralmeeting` - Ordinary general meeting.
    # * `Otherevent` - Other event, use only when no other event type applies, for example, a new event type.
    # * `Paripassu` - Occurs when securities with different characteristics, for example, shares with different entitlements to dividend or voting rights, become identical in all respects, for example, pari-passu or assimilation. May be scheduled in advance, for example, shares resulting from a bonus may become fungible after a pre-set period of time, or may result from outside events, for example, merger, reorganisation, issue of supplementary tranches.
    # * `Partialredemptionwithoutpoolfactorreduction` - Securities are redeemed in part before their scheduled final maturity date. It is done without any pool factor reduction. The redemption is reflected in a debit of the face amount (FAMT).
    # * `Partialredemptionwithpoolfactorreduction` - Securities are redeemed in part before their scheduled final maturity date. The redemption is reflected in a pool factor reduction. No movement of securities occurs.
    # * `Payinkind` - Interest payment, in any kind except cash, distributed to holders of an interest bearing asset.
    # * `Placeofincorporation` - Changes in the state of incorporation for US companies and changes in the place of incorporation for foreign companies. Where shares need to be registered following the incorporation change, the holder(s) may have to elect the registrar.
    # * `Prefunding` - Also called partial defeasance. Issuer has money set aside to redeem a portion of an issue and the indenture states that the securities could be called earlier than the stated maturity.
    # * `Priorityissue` - Form of open or public offer where, due to a limited amount of securities available, priority is given to existing shareholders.
    # * `Putredemption` - Early redemption of a security at the election of the holder subject to the terms and condition of the issue with no reduction in nominal value.
    # * `Redenomination` - Event by which the unit (currency and/or nominal) of a security is restated, for example, nominal/par value of security in a national currency is restated in another currency.
    # * `Remarketing` - Purchase and sale of remarketed preferred equities/bonds through the negotiation of interest rate between the issuers and the holders.
    # * `Remarketingagreement` - Purchase and sale of remarketed preferred equities/bonds through the negotiation of interest rate between the issuers and the holders.
    # * `Repurchaseoffer` - Repurchase offer / issuer bid / reverse rights. Offer to existing holders by the issuing company to repurchase its own securities. The objective of the offer is to reduce the number of outstanding securities.
    # * `Reversestocksplit` - Decrease in a company's number of outstanding equities without any change in the shareholder's equity or the aggregate market value at the time of the split. Equity price and nominal value are increased accordingly.
    # * `Rightsissue` - Offer to holders of a security to subscribe for additional securities via the distribution of an intermediate security. Both processes are included in the same event.
    # * `Scripdividend` - Dividend or interest paid in the form of scrip.
    # * `Securitiesholdersmeeting` - Ordinary or annual or extraordinary or special general meeting.
    # * `Sharespremiumdividend` - Corporate event pays shareholders an amount in cash issued from the shares premium reserve. It is similar to a dividend but with different tax implications.
    # * `Smallestnegotiableunit` - Modification of the smallest negotiable unit of shares in order to obtain a new negotiable unit.
    # * `Spinoff` - Distribution of securities issued by another company. The distributed securities may either be of a newly created or of an existing company. For example, spin-off, demerger, unbundling, divestment.
    # * `Stockdividend` - Dividend paid to shareholders in the form of equities of the issuing corporation.
    # * `Stocksplit` - Increase in a corporation's number of outstanding equities without any change in the shareholder's equity or the aggregate market value at the time of the split. Equity price and nominal value are reduced accordingly.
    # * `Subscription` - Ability for security holders to purchase (additional or new) securities at a certain price, in proportion to their holding.
    # * `Taxonnondistributedproceeds` - Taxable component on non-distributed proceeds, for example, Australian deemed income or US 871m income regulation.
    # * `Taxreclaim` - Event related to tax reclaim activities.
    # * `Tender` - Offer made to holders by a third party, requesting them to sell (tender) or exchange their securities.
    # * `Tradingstatusdelisted` - Security is no longer able to comply with the listing requirements of a stock exchange and is removed from official board quotation.
    # * `Tradingstatussuspended` - Trading in the security has been suspended.
    # * `Warrantexercise` - Option offered to holders to buy (call warrant) or to sell (put warrant) a specific amount of stock, cash, or commodity, at a predetermined price, during a predetermined period of time (which usually corresponds to the life of the issue).
    # * `Withholdingtaxreliefcertification` - Certification process for withholding tax reduction or exemption based on the tax status of the holder.
    # * `Worthless` - Booking out of valueless securities.
    corporateactiontypevalues CorporateActionType?;
    # >
    # * `TradingDate` - Date/time at which the deal (rights) was agreed. (ISO20022)
    # * `PariPassuDate` - Date on which security will assimilate, become fungible, or have the same rights to dividends as the parent issue. (ISO20022)
    # * `AnnouncementDate` - Date/time at which the issuer announced that a corporate action event will occur such as the issue of securities or an official meeting. (ISO20022)
    # * `EffectiveDate` - Date/time at which an event is officially effective from the issuer's perspective. (ISO20022)
    # * `LapsedDate` - Date/time at which an event/offer is terminated or lapsed. (ISO20022)
    # * `MarginFixingDate` - Date/time at which the margin rate will be determined . (ISO20022)
    corporateactiondatetimetypevalues CorporateActionDateTime?;
    # The period during which the corporate action arrangement is effective.
    common:datetimeperiod CorporateActionDeadline?;
    # Specifies prices related to a corporate action. (ISO20022)
    string CorporateActionPrice?;
    # Specifies the charges relative to a corporate action event. (ISO20022)
    common:feearrangement CorporateActionFeeAndCharge?;
};

public type SecurityRightsIssueActionOk record {|
    *http:Ok;
    SecurityRightsIssueAction body;
|};

# >
# * `TradingDate` - Date/time at which the deal (rights) was agreed. (ISO20022)
# * `PariPassuDate` - Date on which security will assimilate, become fungible, or have the same rights to dividends as the parent issue. (ISO20022)
# * `AnnouncementDate` - Date/time at which the issuer announced that a corporate action event will occur such as the issue of securities or an official meeting. (ISO20022)
# * `EffectiveDate` - Date/time at which an event is officially effective from the issuer's perspective. (ISO20022)
# * `LapsedDate` - Date/time at which an event/offer is terminated or lapsed. (ISO20022)
# * `MarginFixingDate` - Date/time at which the margin rate will be determined . (ISO20022)
public type corporateactiondatetimetypevalues "TradingDate"|"PariPassuDate"|"AnnouncementDate"|"EffectiveDate"|"LapsedDate"|"MarginFixingDate";

public type StockSplitorReversalActionOk record {|
    *http:Ok;
    StockSplitorReversalAction body;
|};

# A course of action for doing Security Rights Issue Action Workstep in the context of executing the Security Rights Issue Action Workstep
public type SecurityMergersandAcquisitionAction record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Preconditions?;
    # ||
    # |
    common:involvedparty BusinessUnitorEmployeeReference?;
    # The schedule according to which the service provider will process the Corporate Action Procedure ||
    # |
    common:schedule Schedule?;
    # The Security Rights Issue Action Workstep specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Corporate Action Procedure ||
    # |
    common:procedure CorporateActionProcedureReference?;
    # Reference to Security Rights Issue Action Workstep
    common:workstep SecurityMergersandAcquisitionActionWorkstepReference?;
    # The particular date and time point in the progression of time
    common:text SecurityMergersandAcquisitionActionWorkstepType?;
};

# >
# * `Dividendreinvestment` - Dividend payment where holders can keep cash or have the cash reinvested in the market by the issuer into additional shares in the issuing company. To be distinguished from DVOP as the company invests the dividend in the market rather than creating new share capital in exchange for the dividend.
# * `Accumulation` - Funds related event in which the income (for example accumulation units) that accrues during an accounting period is retained within the fund instead of being paid away to investors. The retained income is nonetheless deemed to have been distributed to investors for tax purposes.
# * `Activetradingstatus` - Trading in the security has commenced or security has been re-activated after a suspension in trading.
# * `Annualgeneralmeeting` - Meeting Annual general meeting.
# * `Attachment` - Combination of different security types to create a unit. Units are usually comprised of warrants and bonds or warrants and equities. Securities may be combined at the request of the security holder or based on market convention.
# * `Bankruptcy` - Legal status of a company unable to pay creditors. Bankruptcy usually involves a formal court ruling. Securities may become valueless.
# * `Bonddefault` - Failure by the company to perform obligations defined as default events under the bond agreement and that have not been remedied.
# * `Bonusissue` - Bonus or capitalisation issue. Security holders receive additional assets free of payment from the issuer, in proportion to their holding.
# * `Callonintermediatesecurities` - Call or exercise on nil paid securities or intermediate securities resulting from an intermediate securities distribution (RHDI). This code is used for the second event, when an intermediate securities' issue (rights/coupons) is composed of two events, the first event being the distribution of intermediate securities.
# * `Capitaldistribution` - Corporate event pays shareholders an amount in cash issued from the capital account. There is no reduction to the face value of a single share (or the share has no par value). The number of circulating shares remains unchanged.
# * `Capitalgainsdistribution` - Event is the distribution of profits resulting from the sale of securities. Shareholders of mutual funds, unit trusts, or SICAVs are recipients of capital gains distributions and are often reinvested in additional shares of the fund.
# * `Capitalisation` - Increase of the current principal of a debt instrument without increasing the nominal value. It normally arises from the incorporation of due but unpaid interest into the principal. This is commonly done by increasing the pool factor value, for example, capitalisation, and negative amortisation.
# * `Cashdistributionfromnoneligiblesecuritiessales` - Distribution to shareholders of cash resulting from the selling of non-eligible securities, for example, in the frame of a depositary receipt program.
# * `Cashdividend` - Distribution of cash to shareholders, in proportion to their equity holding. Ordinary dividends are recurring and regular. Shareholder must take cash and may be offered a choice of currency.
# * `Change` - Information regarding a change further described in the corporate action details.
# * `Classactionproposedsettlement` - Situation where interested parties seek restitution for financial loss. The security holder may be offered the opportunity to join a class action proceeding and would need to respond with an instruction.
# * `Companyoption` - Company option may be granted by the company, allowing the holder to take up shares at some future date(s) at a pre arranged price in the company. A company may not grant options which enable the holder to take up unissued shares at a time which is five or more years from the date of the grant. Option holders are not members of a company. They are contingent creditors of a company and hence may, in some instances, be entitled to vote on and be bound by a scheme of arrangement between the creditors and the company. As many options have multiple exercise periods a company option will either lapse or carry on to the next expiry date.
# * `Consent` - Procedure that aims to obtain consent of holder to a proposal by the issuer or a third party without convening a meeting. For example, consent to change the terms of a bond.
# * `Conversion` - Conversion of securities (generally convertible bonds or preferred shares) into another form of securities (usually common shares) at a pre-stated price/ratio.
# * `Couponstripping` - Coupon stripping is the process whereby interest coupons for future payment dates are separated from the security corpus that entitles the holder to the principal repayment.
# * `Courtmeeting` - Announcement of a meeting at a Court.
# * `Creditevent` - Occurrence of credit derivative for which the issuer of one or several underlying securities is unable to fulfill its financial obligations (as defined in terms and conditions).
# * `Decreaseinvalue` - Reduction of face value of a single share or the value of fund assets. The number of circulating shares/units remains unchanged. This event may include a cash payout to holders.
# * `Detachment` - Separation of components that comprise a security, for example, usually units comprised of warrants and bond or warrants and equity. Units may be broken up at the request of the security holder or based on market convention.
# * `Disclosure` - Requirement for holders or beneficial owners to disclose their name, location and holdings of any issue to the issuer.
# * `Dividendoption` - Distribution of a dividend to shareholders with a choice of benefit to receive. Shareholders may choose to receive shares or cash. To be distinguished from DRIP as the company creates new share capital in exchange for the dividend rather than investing the dividend in the market.
# * `Drawing` - Securities are redeemed in part before the scheduled final maturity date. It is done without any pool factor reduction. The redemption is reflected in a debit of the face amount (FAMT). Drawing is distinct from partial call since drawn bonds are chosen by lottery. Therefore, not every holder is affected in the same way.
# * `Dutchauction` - Action by a party wishing to acquire a security. Holders of the security are invited to make an offer to sell, within a specific price range. The acquiring party will buy from the holder with lowest offer.
# * `Earlyredemption` - This includes drawing, partial and full call, put.
# * `Exchange` - Exchange of holdings for other securities and/or cash. The exchange can be either mandatory or voluntary involving the exchange of outstanding securities for different securities and/or cash. For example "exchange offer", "capital reorganisation" or "funds separation".
# * `Exchangeoption` - Event is an option for the shareholders to exchange their securities for other securities and/or cash. Exchange options are mentioned in the terms and conditions of a security and are valid during the whole lifetime of a security.
# * `Extraordinarygeneralmeeting` - Extraordinary or Special General Meeting. Extraordinary or special general meeting.
# * `Finalmaturity` - Redemption of an entire issue outstanding of securities, for example, bonds, preferred equity, funds, by the issuer or its agent, for example, asset manager, at final maturity.
# * `Fullcall` - Redemption of an entire issue outstanding of securities, for example, bonds, preferred equity, funds, by the issuer or its agent, for example, asset manager, before final maturity.
# * `Increaseinvalue` - Increase in the face value of a single security. The number of circulating securities remains unchanged.
# * `Information` - Information provided by the issuer having no accounting/financial impact on the holder.
# * `Instalmentcall` - Instalment towards the purchase of equity capital, subject to an agreement between an issuer and a purchaser.
# * `Interestpayment` - Interest payment distributed to holders of an interest bearing asset.
# * `Interestpaymentwithprincipal` - Event which consists of two components, the decrease of the amortized value of a pool factor security and an interest payment.
# * `Intermediatesecuritiesdistribution` - Distribution of intermediate securities that gives the holder the right to take part in a future event.
# * `Liquidationdividend` - Distribution of cash, assets or both. Debt may be paid in order of priority based on preferred claims to assets specified by the security.
# * `Maturityextension` - As stipulated in the security's Terms and Conditions, the issuer or the holder may prolong the maturity date of a security. After extension, the security details may differ from the original issue. An issuer initiated extension may be subject to holder's approval.
# * `Merger` - Exchange of outstanding securities, initiated by the issuer which may include options, as the result of two or more companies combining assets, that is, an external, third party company. Cash payments may accompany share exchange.
# * `Namechange` - Event is a name change. The issuing company changes its name. The event shows the change from old name to new name and may involve surrendering physical shares with the old name to the registrar.
# * `Nonofficialoffer` - Offers that are not supervised or regulated by an official entity and being offered by a party, for example a broker, usually at a discount price, for example broker offer, mini-tender, mini odd lot offer or third party offer.
# * `Nonustefradcertification` - Non-US beneficial owner certification requirement for exchange of temporary to permanent notes.
# * `Oddlotsalepurchase` - Sale or purchase of odd-lots to/from the issuing company, initiated either by the holder of the security or through an offer made by the issuer.
# * `Ordinarygeneralmeeting` - Ordinary general meeting.
# * `Otherevent` - Other event, use only when no other event type applies, for example, a new event type.
# * `Paripassu` - Occurs when securities with different characteristics, for example, shares with different entitlements to dividend or voting rights, become identical in all respects, for example, pari-passu or assimilation. May be scheduled in advance, for example, shares resulting from a bonus may become fungible after a pre-set period of time, or may result from outside events, for example, merger, reorganisation, issue of supplementary tranches.
# * `Partialredemptionwithoutpoolfactorreduction` - Securities are redeemed in part before their scheduled final maturity date. It is done without any pool factor reduction. The redemption is reflected in a debit of the face amount (FAMT).
# * `Partialredemptionwithpoolfactorreduction` - Securities are redeemed in part before their scheduled final maturity date. The redemption is reflected in a pool factor reduction. No movement of securities occurs.
# * `Payinkind` - Interest payment, in any kind except cash, distributed to holders of an interest bearing asset.
# * `Placeofincorporation` - Changes in the state of incorporation for US companies and changes in the place of incorporation for foreign companies. Where shares need to be registered following the incorporation change, the holder(s) may have to elect the registrar.
# * `Prefunding` - Also called partial defeasance. Issuer has money set aside to redeem a portion of an issue and the indenture states that the securities could be called earlier than the stated maturity.
# * `Priorityissue` - Form of open or public offer where, due to a limited amount of securities available, priority is given to existing shareholders.
# * `Putredemption` - Early redemption of a security at the election of the holder subject to the terms and condition of the issue with no reduction in nominal value.
# * `Redenomination` - Event by which the unit (currency and/or nominal) of a security is restated, for example, nominal/par value of security in a national currency is restated in another currency.
# * `Remarketing` - Purchase and sale of remarketed preferred equities/bonds through the negotiation of interest rate between the issuers and the holders.
# * `Remarketingagreement` - Purchase and sale of remarketed preferred equities/bonds through the negotiation of interest rate between the issuers and the holders.
# * `Repurchaseoffer` - Repurchase offer / issuer bid / reverse rights. Offer to existing holders by the issuing company to repurchase its own securities. The objective of the offer is to reduce the number of outstanding securities.
# * `Reversestocksplit` - Decrease in a company's number of outstanding equities without any change in the shareholder's equity or the aggregate market value at the time of the split. Equity price and nominal value are increased accordingly.
# * `Rightsissue` - Offer to holders of a security to subscribe for additional securities via the distribution of an intermediate security. Both processes are included in the same event.
# * `Scripdividend` - Dividend or interest paid in the form of scrip.
# * `Securitiesholdersmeeting` - Ordinary or annual or extraordinary or special general meeting.
# * `Sharespremiumdividend` - Corporate event pays shareholders an amount in cash issued from the shares premium reserve. It is similar to a dividend but with different tax implications.
# * `Smallestnegotiableunit` - Modification of the smallest negotiable unit of shares in order to obtain a new negotiable unit.
# * `Spinoff` - Distribution of securities issued by another company. The distributed securities may either be of a newly created or of an existing company. For example, spin-off, demerger, unbundling, divestment.
# * `Stockdividend` - Dividend paid to shareholders in the form of equities of the issuing corporation.
# * `Stocksplit` - Increase in a corporation's number of outstanding equities without any change in the shareholder's equity or the aggregate market value at the time of the split. Equity price and nominal value are reduced accordingly.
# * `Subscription` - Ability for security holders to purchase (additional or new) securities at a certain price, in proportion to their holding.
# * `Taxonnondistributedproceeds` - Taxable component on non-distributed proceeds, for example, Australian deemed income or US 871m income regulation.
# * `Taxreclaim` - Event related to tax reclaim activities.
# * `Tender` - Offer made to holders by a third party, requesting them to sell (tender) or exchange their securities.
# * `Tradingstatusdelisted` - Security is no longer able to comply with the listing requirements of a stock exchange and is removed from official board quotation.
# * `Tradingstatussuspended` - Trading in the security has been suspended.
# * `Warrantexercise` - Option offered to holders to buy (call warrant) or to sell (put warrant) a specific amount of stock, cash, or commodity, at a predetermined price, during a predetermined period of time (which usually corresponds to the life of the issue).
# * `Withholdingtaxreliefcertification` - Certification process for withholding tax reduction or exemption based on the tax status of the holder.
# * `Worthless` - Booking out of valueless securities.
public type corporateactiontypevalues "Dividendreinvestment"|"Accumulation"|"Activetradingstatus"|"Annualgeneralmeeting"|"Attachment"|"Bankruptcy"|"Bonddefault"|"Bonusissue"|"Callonintermediatesecurities"|"Capitaldistribution"|"Capitalgainsdistribution"|"Capitalisation"|"Cashdistributionfromnoneligiblesecuritiessales"|"Cashdividend"|"Change"|"Classactionproposedsettlement"|"Companyoption"|"Consent"|"Conversion"|"Couponstripping"|"Courtmeeting"|"Creditevent"|"Decreaseinvalue"|"Detachment"|"Disclosure"|"Dividendoption"|"Drawing"|"Dutchauction"|"Earlyredemption"|"Exchange"|"Exchangeoption"|"Extraordinarygeneralmeeting"|"Finalmaturity"|"Fullcall"|"Increaseinvalue"|"Information"|"Instalmentcall"|"Interestpayment"|"Interestpaymentwithprincipal"|"Intermediatesecuritiesdistribution"|"Liquidationdividend"|"Maturityextension"|"Merger"|"Namechange"|"Nonofficialoffer"|"Nonustefradcertification"|"Oddlotsalepurchase"|"Ordinarygeneralmeeting"|"Otherevent"|"Paripassu"|"Partialredemptionwithoutpoolfactorreduction"|"Partialredemptionwithpoolfactorreduction"|"Payinkind"|"Placeofincorporation"|"Prefunding"|"Priorityissue"|"Putredemption"|"Redenomination"|"Remarketing"|"Remarketingagreement"|"Repurchaseoffer"|"Reversestocksplit"|"Rightsissue"|"Scripdividend"|"Securitiesholdersmeeting"|"Sharespremiumdividend"|"Smallestnegotiableunit"|"Spinoff"|"Stockdividend"|"Stocksplit"|"Subscription"|"Taxonnondistributedproceeds"|"Taxreclaim"|"Tender"|"Tradingstatusdelisted"|"Tradingstatussuspended"|"Warrantexercise"|"Withholdingtaxreliefcertification"|"Worthless";

# A course of action for doing Security Rights Issue Action Workstep in the context of executing the Security Rights Issue Action Workstep
public type SecurityDividendPayment record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Preconditions?;
    # ||
    # |
    common:involvedparty BusinessUnitorEmployeeReference?;
    # The schedule according to which the service provider will process the Corporate Action Procedure ||
    # |
    common:schedule Schedule?;
    # The Security Rights Issue Action Workstep specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Corporate Action Procedure ||
    # |
    common:procedure CorporateActionProcedureReference?;
    # Reference to Security Rights Issue Action Workstep
    common:workstep SecurityDividendPaymentWorkstepReference?;
    # The particular date and time point in the progression of time
    common:text SecurityDividendPaymentWorkstepType?;
};

public type CorporateActionProcedureOk record {|
    *http:Ok;
    CorporateActionProcedure body;
|};

# A course of action for doing Security Rights Issue Action Workstep in the context of executing the Security Rights Issue Action Workstep
public type SecurityRightsIssueAction record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Preconditions?;
    # ||
    # |
    common:involvedparty BusinessUnitorEmployeeReference?;
    # The schedule according to which the service provider will process the Corporate Action Procedure ||
    # |
    common:schedule Schedule?;
    # The Security Rights Issue Action Workstep specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Corporate Action Procedure ||
    # |
    common:procedure CorporateActionProcedureReference?;
    # Reference to Security Rights Issue Action Workstep
    common:workstep SecurityRightsIssueActionWorkstepReference?;
    # The particular date and time point in the progression of time
    common:text SecurityRightsIssueActionWorkstepType?;
};

# ||
# |
public type corporateactioninvolvementtypevalues "CorporateActionAgent"|"CorporateActionOfferor";

# A course of action for doing Security Rights Issue Action Workstep in the context of executing the Security Rights Issue Action Workstep
public type StockSplitorReversalAction record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Preconditions?;
    # ||
    # |
    common:involvedparty BusinessUnitorEmployeeReference?;
    # The schedule according to which the service provider will process the Corporate Action Procedure ||
    # |
    common:schedule Schedule?;
    # The Security Rights Issue Action Workstep specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Corporate Action Procedure ||
    # |
    common:procedure CorporateActionProcedureReference?;
    # Reference to Security Rights Issue Action Workstep
    common:workstep StockSplitorReversalActionWorkstepReference?;
    # The particular date and time point in the progression of time
    common:text StockSplitorReversalActionWorkstepType?;
};

# Complete work tasks following a defined procedure in support of general office activities and product and service delivery within Corporate Action. 
public type CorporateActionProcedure record {
    # A Classification value that distinguishes between Procedures according to the type of business services and/or type of concern defined within Corporate Action Procedure ||
    # |
    common:featuretypevalues CorporateActionProcedureParameterType?;
    # A selected optional business service as subject matter of Corporate Action Procedure ||
    # |
    common:feature CorporateActionProcedureSelectedOption?;
    # Request to process Corporate Action Procedure ||
    # |
    common:Instruction CorporateActionProcedureRequest?;
    # The schedule according to which the service provider will process the Corporate Action Procedure ||
    # |
    common:schedule CorporateActionProcedureSchedule?;
    # The status of Corporate Action Procedure Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status CorporateActionProcedureStatus?;
    # ||
    # |
    common:involvedparty CorporateActionProcedureAssociatedPartyReference?;
    # ||
    # |
    common:involvedparty CorporateActionProcedureBusinessUnitReference?;
    # ||
    # |
    common:involvedparty CorporateActionProcedureServiceProviderReference?;
    # Reference to the Financial Facility related to Corporate Action Procedure ||
    # |
    common:FinancialFacility CorporateActionProcedureFinancialFacilityReference?;
    # ||
    # |
    common:involvedparty CorporateActionProcedureEmployeeReference?;
    # ||
    # |
    common:involvedparty CorporateActionProcedureCustomerReference?;
    # A Classification value that distinguishes between the type of process undertaken within Corporate Action Procedure ||
    # |
    common:proceduretype CorporateActionProcedureType?;
    # The schedule according to which the service provider will process the Corporate Action Procedure ||
    # |
    common:schedule CorporateActionProcedureServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services in Corporate Action Procedure ||
    # |
    common:servicetype CorporateActionProcedureServiceType?;
    # A Classification value that distinguishes between the type of products/services related to Corporate Action Procedure ||
    # |
    common:Bankingproducttype CorporateActionProcedureProductandServiceType?;
    # Reference to the product or service that is related to Corporate Action Procedure Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct CorporateActionProcedureProductandServiceInstance?;
    # A Classification value that distinguishes between the type of transactions in Corporate Action Procedure ||
    # |
    common:transactiontype CorporateActionProcedureTransactionType?;
    # Reference to the transaction that is related to Corporate Action Procedure ObligationFulfilment|ObligationFulfilment (https://www.iso20022.org/standardsrepository/type/ObligationFulfilment)|Standard|ISO20022 BM ()
    'common:Transaction CorporateActionProcedureTransaction?;
    # Reference to the Financial Transaction Arrangement that is related to Corporate Action Procedure Obligation|Obligation (https://www.iso20022.org/standardsrepository/type/Obligation)|Standard|ISO20022 BM ()
    common:Arrangement CorporateActionProcedureFinancialTransactionArrangement?;
    # Reference to the Customer Agreement that is related to Corporate Action Procedure Agreement_x000D_
    # |Agreement (https://www.iso20022.org/standardsrepository/type/Agreement)|Standard|ISO20022 BM ()
    common:Agreement CorporateActionProcedureCustomerAgreementReference?;
    # An unique reference to an item or an occurrence of Corporate Action Procedure ||
    # |
    common:procedure CorporateActionProcedureReference?;
    # CorporateActionEvent|CorporateActionEvent (https://www.iso20022.org/standardsrepository/type/CorporateActionEvent)|Standard|ISO20022 BM ()
    corporateaction CorporateActionReference?;
    # CorporateActionEvent|CorporateActionEvent (https://www.iso20022.org/standardsrepository/type/CorporateActionEvent)|Standard|ISO20022 BM ()
    corporateactionarrangement CorporateActionArrangementReference?;
    # ||
    # |
    common:involvedparty CorporateActionInvolvedPartyReference?;
    # ||
    # |
    corporateactioninvolvementtypevalues CorporateActionInvolvementType?;
};

public type SecurityMergersandAcquisitionActionOk record {|
    *http:Ok;
    SecurityMergersandAcquisitionAction body;
|};

# >
# * `Active` - The CA event is active. (ISO20022)
# * `Deactivated` - The CA event is deactivated. The clients cannot send instruction anymore. (ISO20022)
# * `Expired` - The CA event is expired, no more processing, claims, transformations take place. (ISO20022)
# * `Cancelled` - The CA event is cancelled. (ISO20022)
# * `Withdrawn` - The CA event is withrawn, ie, cancelled by the market. (ISO20022)
# * `Inactive` - Option is not active and can no longer be responded to. Any responses already processed against this option will remain valid, eg, expired option. (ISO20022)
public type corporateactionstatustypevalues "Active"|"Deactivated"|"Expired"|"Cancelled"|"Withdrawn"|"Inactive";
