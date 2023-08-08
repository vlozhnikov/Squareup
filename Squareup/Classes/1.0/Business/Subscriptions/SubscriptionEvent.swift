//
//  SubscriptionEvent.swift
//  Squareup
//
//  Created by user on 23.06.23.
//

import Foundation

/// - SubscriptionEvent: Describes changes to a subscription and the subscription status.
/// https://developer.squareup.com/reference/square/objects/SubscriptionEvent
open class SubscriptionEvent: Codable {
    
    /// - Id: The ID of the subscription event.
    var Id: String?
    /// - SubscriptionEventType: Type of the subscription event.
    var SubscriptionEventType: SubscriptionEventSubscriptionEventType?
    /// - EffectiveDate: The YYYY-MM-DD-formatted date (for example, 2013-01-15) when the subscription event occurred.
//    var EffectiveDate: Date?
    @FormattedDate<YYYYMMDD_Strategy> var EffectiveDate: Date?
    /// - Info: Additional information about the subscription event.
    var Info: SubscriptionEventInfo?
    /// - Phases: A list of Phases, to pass phase-specific information used in the swap.
    var Phases: [Phase]?
    /// - PlanVariationId: The ID of the subscription plan variation associated with the subscription.
    var PlanVariationId: String?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case SubscriptionEventType = "subscription_event_type"
        case EffectiveDate = "effective_date"
        case Info = "info"
        case Phases = "phases"
        case PlanVariationId = "plan_variation_id"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
//        self.SubscriptionEventType = try container.decodeIfPresent(SubscriptionEventSubscriptionEventType.self, forKey: .SubscriptionEventType)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .EffectiveDate), !dateString.isEmpty {
//            self.EffectiveDate = try dateString.decode_YYYYMMDD_Date(container, forKey: .EffectiveDate)
//        }
//        self.Info = try container.decodeIfPresent(SubscriptionEventInfo.self, forKey: .Info)
//        self.Phases = try container.decodeIfPresent([Phase].self, forKey: .Phases)
//        self.PlanVariationId = try container.decodeIfPresent(String.self, forKey: .PlanVariationId)
//    }
}
