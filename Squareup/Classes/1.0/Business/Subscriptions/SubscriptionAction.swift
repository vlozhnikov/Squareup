//
//  SubscriptionAction.swift
//  Squareup
//
//  Created by user on 23.06.23.
//

import Foundation

/// - SubscriptionAction: Represents an action as a pending change to a subscription.
/// https://developer.squareup.com/reference/square/objects/SubscriptionAction
open class SubscriptionAction: Codable {
    
    /// - Id: The ID of an action scoped to a subscription.
    public var Id: String?
    /// - Type: The type of the action.
    public var type: SubscriptionActionType?
    /// - EffectiveDate: The YYYY-MM-DD-formatted date when the action occurs on the subscription.
//    var EffectiveDate: Date?
    @FormattedDate<YYYYMMDD_Strategy> public var EffectiveDate: Date?
    /// - Phases: A list of Phases, to pass phase-specific information used in the swap.
    public var Phases: [Phase]?
    /// - NewPlanVariationId: The target subscription plan variation that a subscription switches to, for a SWAP_PLAN action.
    public var NewPlanVariationId: String?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case type = "type"
        case EffectiveDate = "effective_date"
        case Phases = "phases"
        case NewPlanVariationId = "new_plan_variation_id"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
//        self.type = try container.decodeIfPresent(SubscriptionActionType.self, forKey: .type)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .EffectiveDate), !dateString.isEmpty {
//            self.EffectiveDate = try dateString.decode_YYYYMMDD_Date(container, forKey: .EffectiveDate)
//        }
//        self.Phases = try container.decodeIfPresent([Phase].self, forKey: .Phases)
//        self.NewPlanVariationId = try container.decodeIfPresent(String.self, forKey: .NewPlanVariationId)
//    }
}
