//
//  CreateSubscriptionRequest.swift
//  Squareup
//
//  Created by user on 23.06.23.
//

import Foundation

open class CreateSubscriptionRequest: Codable {
    
    /// - IdempotencyKey: A unique string that identifies this CreateSubscription request. If you do not provide a unique string (or provide an empty string as the value), the endpoint treats each request as independent.
    public var IdempotencyKey: String?
    /// - LocationId: The ID of the location the subscription is associated with.
    /// Min Length 1
    public var LocationId: String?
    /// - PlanId: The ID of the subscription plan created using the Catalog API.
    /// Deprecated in favour of plan_variation_id.
    public var PlanId: String?
    /// - PlanVariationId: The ID of the subscription plan variation created using the Catalog API.
    public var PlanVariationId: String?
    /// - CustomerId: The ID of the customer subscribing to the subscription plan variation.
    /// Min Length 1
    public var CustomerId: String?
    /// - StartDate: The YYYY-MM-DD-formatted date to start the subscription. If it is unspecified, the subscription starts immediately.
//    var StartDate: Date?
    @FormattedDate<YYYYMMDD_Strategy> public var StartDate: Date?
    /// - CanceledDate: The YYYY-MM-DD-formatted date when the newly created subscription is scheduled for cancellation.
    /// This date overrides the cancellation date set in the plan variation configuration. If the cancellation date is earlier than the end date of a subscription cycle, the subscription stops at the canceled date and the subscriber is sent a prorated invoice at the beginning of the canceled cycle.
    /// When the subscription plan of the newly created subscription has a fixed number of cycles and the canceled_date occurs before the subscription plan expires, the specified canceled_date sets the date when the subscription stops through the end of the last cycle.
//    var CanceledDate: Date?
    @FormattedDate<YYYYMMDD_Strategy> public var CanceledDate: Date?
    /// - TaxPercentage: The tax to add when billing the subscription. The percentage is expressed in decimal form, using a '.' as the decimal separator and without a '%' sign. For example, a value of 7.5 corresponds to 7.5%.
    /// Max Length 10
    public var TaxPercentage: String?
    /// - PriceOverrideMoney: A custom price to apply for the subscription. If specified, it overrides the price configured by the subscription plan.
    public var PriceOverrideMoney: Money?
    /// - CardId: The ID of the subscriber's card to charge. If it is not specified, the subscriber receives an invoice via email with a link to pay for their subscription.
    public var CardId: String?
    /// - Timezone: The timezone that is used in date calculations for the subscription. If unset, defaults to the location timezone. If a timezone is not configured for the location, defaults to "America/New_York". Format: the IANA Timezone Database identifier for the location timezone. For a list of time zones, see List of tz database time zones.
    public var Timezone: String?
    /// - Source: The origination details of the subscription.
    public var Source: SubscriptionSource?
    /// - Phases: array of phases for this subscription
    public var Phases: [Phase]?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case LocationId = "location_id"
        case PlanId = "plan_id"
        case PlanVariationId = "plan_variation_id"
        case CustomerId = "customer_id"
        case StartDate = "start_date"
        case CanceledDate = "canceled_date"
        case TaxPercentage = "tax_percentage"
        case PriceOverrideMoney = "price_override_money"
        case CardId = "card_id"
        case Timezone = "timezone"
        case Source = "source"
        case Phases = "phases"
    }
//    
//    required init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.IdempotencyKey = try container.decodeIfPresent(String.self, forKey: .IdempotencyKey)
//        self.LocationId = try container.decodeIfPresent(String.self, forKey: .LocationId)
//        self.PlanId = try container.decodeIfPresent(String.self, forKey: .PlanId)
//        self.PlanVariationId = try container.decodeIfPresent(String.self, forKey: .PlanVariationId)
//        self.CustomerId = try container.decodeIfPresent(String.self, forKey: .CustomerId)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .StartDate), !dateString.isEmpty {
//            self.StartDate = try dateString.decode_YYYYMMDD_Date(container, forKey: .StartDate)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CanceledDate), !dateString.isEmpty {
//            self.CanceledDate = try dateString.decode_YYYYMMDD_Date(container, forKey: .CanceledDate)
//        }
//        self.TaxPercentage = try container.decodeIfPresent(String.self, forKey: .TaxPercentage)
//        self.PriceOverrideMoney = try container.decodeIfPresent(Money.self, forKey: .PriceOverrideMoney)
//        self.CardId = try container.decodeIfPresent(String.self, forKey: .CardId)
//        self.Timezone = try container.decodeIfPresent(String.self, forKey: .Timezone)
//        self.Source = try container.decodeIfPresent(SubscriptionSource.self, forKey: .Source)
//        self.Phases = try container.decodeIfPresent([Phase].self, forKey: .Phases)
//    }
}
