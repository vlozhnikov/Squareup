//
//  LoyaltyPromotionIncentivePointsAdditionData.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

/// - LoyaltyPromotionIncentivePointsAdditionData:Represents the metadata for a POINTS_ADDITION type of loyalty promotion incentive.
/// https://developer.squareup.com/reference/square/objects/LoyaltyPromotionIncentivePointsAdditionData
open class LoyaltyPromotionIncentivePointsAdditionData: Codable {
    
    /// - PointsAddition: The number of additional points to earn each time the promotion is triggered. For example, suppose a purchase qualifies for 5 points from the base loyalty program. If the purchase also qualifies for a POINTS_ADDITION promotion incentive with a points_addition of 3, the buyer earns a total of 8 points (5 program points + 3 promotion points = 8 points).
    /// Min 1
    public var PointsAddition: Int?
    
    enum CodingKeys: String, CodingKey {
        case PointsAddition = "points_addition"
    }
}
