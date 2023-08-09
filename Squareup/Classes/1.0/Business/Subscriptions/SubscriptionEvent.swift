//
//  SubscriptionEvent.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 23.06.23.
//

import Foundation

/// - SubscriptionEvent: Describes changes to a subscription and the subscription status.
/// https://developer.squareup.com/reference/square/objects/SubscriptionEvent
open class SubscriptionEvent: Codable {
    
    /// - Id: The ID of the subscription event.
    public var Id: String?
    /// - SubscriptionEventType: Type of the subscription event.
    public var SubscriptionEventType: SubscriptionEventSubscriptionEventType?
    /// - EffectiveDate: The YYYY-MM-DD-formatted date (for example, 2013-01-15) when the subscription event occurred.
    @FormattedDate<YYYYMMDD_Strategy> public var EffectiveDate: Date?
    /// - Info: Additional information about the subscription event.
    public var Info: SubscriptionEventInfo?
    /// - Phases: A list of Phases, to pass phase-specific information used in the swap.
    public var Phases: [Phase]?
    /// - PlanVariationId: The ID of the subscription plan variation associated with the subscription.
    public var PlanVariationId: String?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case SubscriptionEventType = "subscription_event_type"
        case EffectiveDate = "effective_date"
        case Info = "info"
        case Phases = "phases"
        case PlanVariationId = "plan_variation_id"
    }
}
