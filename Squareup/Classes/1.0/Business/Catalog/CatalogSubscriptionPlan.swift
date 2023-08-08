//
//  CatalogSubscriptionPlan.swift
//  Business Calendar
//
//  Created by user on 1.05.23.
//

import Foundation

/// - CatalogSubscriptionPlan: Describes a subscription plan.
/// https://developer.squareup.com/reference/square/objects/CatalogSubscriptionPlan
open class CatalogSubscriptionPlan: Codable {
    
    /// - Name: Required
    /// The name of the plan.
    public var Name: String?
    /// - Phases: A list of SubscriptionPhase containing the SubscriptionPhase for this plan. This field it required. Not including this field will throw a REQUIRED_FIELD_MISSING error
    public var Phases: [SubscriptionPhase]?
    
    enum CodingKeys: String, CodingKey {
        case Name = "name"
        case Phases = "phases"
    }
}
