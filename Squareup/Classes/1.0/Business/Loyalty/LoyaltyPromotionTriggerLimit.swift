//
//  LoyaltyPromotionTriggerLimit.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

/// - LoyaltyPromotionTriggerLimit: Represents the number of times a buyer can earn points during a loyalty promotion.
/// If this field is not set, buyers can trigger the promotion an unlimited number of times to earn points during the time that the promotion is available.
/// A purchase that is disqualified from earning points because of this limit might qualify for another active promotion.
/// https://developer.squareup.com/reference/square/objects/LoyaltyPromotionTriggerLimit
open class LoyaltyPromotionTriggerLimit: Codable {
    
    /// - Times: The maximum number of times a buyer can trigger the promotion during the specified interval.
    /// Min 1
    /// Max 30
    public var Times: Int?
    /// - Interval: The time period the limit applies to.
    public var Interval: LoyaltyPromotionTriggerLimitInterval?
    
    enum CodingKeys: String, CodingKey {
        case Times = "times"
        case Interval = "interval"
    }
}
