//
//  Subscription.swift
//  Squareup
//
//  Created by user on 23.06.23.
//

import Foundation

/// - Subscription: Represents a subscription purchased by a customer.
/// https://developer.squareup.com/reference/square/objects/Subscription
open class Subscription: Codable {
    
    /// - Id: Read only The Square-assigned ID of the subscription.
    /// Max Length 255
    var Id: String?
    /// - LocationId: Read only The ID of the location associated with the subscription.
    var LocationId: String?
    /// - PlanVariationId: Read only The ID of the subscribed-to subscription plan variation.
    var PlanVariationId: String?
    /// - CustomerId: Read only The ID of the subscribing customer profile.
    var CustomerId: String?
    /// - StartDate: Read only The YYYY-MM-DD-formatted date (for example, 2013-01-15) to start the subscription.
//    var StartDate: Date?
    @FormattedDate<YYYYMMDD_Strategy> var StartDate: Date?
    /// - CanceledDate: The YYYY-MM-DD-formatted date (for example, 2013-01-15) to cancel the subscription, when the subscription status changes to CANCELED and the subscription billing stops.
    /// If this field is not set, the subscription ends according its subscription plan.
    /// This field cannot be updated, other than being cleared.
//    var CanceledDate: Date?
    @FormattedDate<YYYYMMDD_Strategy> var CanceledDate: Date?
    /// - ChargedThroughDate: Read only The YYYY-MM-DD-formatted date up to when the subscriber is invoiced for the subscription.
    /// After the invoice is sent for a given billing period, this date will be the last day of the billing period. For example, suppose for the month of May a subscriber gets an invoice (or charged the card) on May 1. For the monthly billing scenario, this date is then set to May 31.
//    var ChargedThroughDate: Date?
    @FormattedDate<YYYYMMDD_Strategy> var ChargedThroughDate: Date?
    /// - Status: Read only The current status of the subscription.
    var Status: SubscriptionStatus?
    /// - TaxPercentage: The tax amount applied when billing the subscription. The percentage is expressed in decimal form, using a '.' as the decimal separator and without a '%' sign. For example, a value of 7.5 corresponds to 7.5%.
    var TaxPercentage: String?
    /// - InvoiceIds: Read only The IDs of the invoices created for the subscription, listed in order when the invoices were created (newest invoices appear first).
    var InvoiceIds: [String]?
    /// - PriceOverrideMoney: A custom price to apply for the subscription. If specified, it overrides the price configured by the subscription plan.
    var PriceOverrideMoney: Money?
    /// - Version: The version of the object. When updating an object, the version supplied must match the version in the database, otherwise the write will be rejected as conflicting.
    var Version: Int?
    /// - CreatedAt: Read only The timestamp when the subscription was created, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var CreatedAt: Date?
    @FormattedDate<RFC3339_Strategy> var CreatedAt: Date?
    /// - CardId: The ID of the subscriber's card used to charge for the subscription.
    var CardId: String?
    /// - Timezone: Read only Timezone that will be used in date calculations for the subscription. Defaults to the timezone of the location based on location_id. Format: the IANA Timezone Database identifier for the location timezone (for example, America/Los_Angeles).
    var Timezone: String?
    /// - Source: The origination details of the subscription.
    var Source: SubscriptionSource?
    /// - Actions: The list of scheduled actions on this subscription. It is set only in the response from
    /// RetrieveSubscription with the query parameter of include=actions or from SearchSubscriptions with the input parameter of include:["actions"].
    var Actions: [SubscriptionAction]?
    /// - Phases: Read only array of phases for this subscription
    var Phases: [Phase]?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case LocationId = "location_id"
        case PlanVariationId = "plan_variation_id"
        case CustomerId = "customer_id"
        case StartDate = "start_date"
        case CanceledDate = "canceled_date"
        case ChargedThroughDate = "charged_through_date"
        case Status = "status"
        case TaxPercentage = "tax_percentage"
        case InvoiceIds = "invoice_ids"
        case PriceOverrideMoney = "price_override_money"
        case Version = "version"
        case CreatedAt = "created_at"
        case CardId = "card_id"
        case Timezone = "timezone"
        case Source = "source"
        case Actions = "actions"
        case Phases = "phases"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
//        self.LocationId = try container.decodeIfPresent(String.self, forKey: .LocationId)
//        self.PlanVariationId = try container.decodeIfPresent(String.self, forKey: .PlanVariationId)
//        self.CustomerId = try container.decodeIfPresent(String.self, forKey: .CustomerId)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .StartDate), !dateString.isEmpty {
//            self.StartDate = try dateString.decode_YYYYMMDD_Date(container, forKey: .StartDate)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CanceledDate), !dateString.isEmpty {
//            self.CanceledDate = try dateString.decode_YYYYMMDD_Date(container, forKey: .CanceledDate)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .ChargedThroughDate), !dateString.isEmpty {
//            self.ChargedThroughDate = try dateString.decode_YYYYMMDD_Date(container, forKey: .ChargedThroughDate)
//        }
//        self.Status = try container.decodeIfPresent(SubscriptionStatus.self, forKey: .Status)
//        self.TaxPercentage = try container.decodeIfPresent(String.self, forKey: .TaxPercentage)
//        self.InvoiceIds = try container.decodeIfPresent([String].self, forKey: .InvoiceIds)
//        self.PriceOverrideMoney = try container.decodeIfPresent(Money.self, forKey: .PriceOverrideMoney)
//        self.Version = try container.decodeIfPresent(Int.self, forKey: .Version)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CreatedAt), !dateString.isEmpty {
//            self.CreatedAt = try dateString.decode_RFC3339_Date(container, forKey: .CreatedAt)
//        }
//        self.CardId = try container.decodeIfPresent(String.self, forKey: .CardId)
//        self.Timezone = try container.decodeIfPresent(String.self, forKey: .Timezone)
//        self.Source = try container.decodeIfPresent(SubscriptionSource.self, forKey: .Source)
//        self.Actions = try container.decodeIfPresent([SubscriptionAction].self, forKey: .Actions)
//        self.Phases = try container.decodeIfPresent([Phase].self, forKey: .Phases)
//    }
}
