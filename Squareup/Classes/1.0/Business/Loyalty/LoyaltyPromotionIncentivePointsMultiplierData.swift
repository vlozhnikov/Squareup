//
//  LoyaltyPromotionIncentivePointsMultiplierData.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

/// - LoyaltyPromotionIncentivePointsMultiplierData: Represents the metadata for a POINTS_MULTIPLIER type of loyalty promotion incentive.
/// https://developer.squareup.com/reference/square/objects/LoyaltyPromotionIncentivePointsMultiplierData
open class LoyaltyPromotionIncentivePointsMultiplierData: Codable {
    
    /// - PointsMultiplier: The multiplier used to calculate the number of points earned each time the promotion is triggered. For example, suppose a purchase qualifies for 5 points from the base loyalty program. If the purchase also qualifies for a POINTS_MULTIPLIER promotion incentive with a points_multiplier of 3, the buyer earns a total of 15 points (5 program points x 3 promotion multiplier = 15 points).
    /// Min 2
    /// Max 10
    public var PointsMultiplier: Int?
    
    enum CodingKeys: String, CodingKey {
        case PointsMultiplier = "points_multiplier"
    }
}
