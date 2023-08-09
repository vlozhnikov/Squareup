//
//  LoyaltyPromotionIncentive.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

/// - LoyaltyPromotionIncentive: Represents how points for a loyalty promotion are calculated, either by multiplying the points earned from the base program or by adding a specified number of points to the points earned from the base program.
/// https://developer.squareup.com/reference/square/objects/LoyaltyPromotionIncentive
open class LoyaltyPromotionIncentive: Codable {
    
    /// - type: The type of points incentive.
    public var type: LoyaltyPromotionIncentiveType?
    /// - PointsMultiplierData: Additional data for a POINTS_MULTIPLIER incentive type.
    public var PointsMultiplierData: LoyaltyPromotionIncentivePointsMultiplierData?
    /// - PointsAdditionData: Additional data for a POINTS_ADDITION incentive type.
    public var PointsAdditionData: LoyaltyPromotionIncentivePointsAdditionData?
    
    enum CodingKeys: String, CodingKey {
        case type = "type"
        case PointsMultiplierData = "points_multiplier_data"
        case PointsAdditionData = "points_addition_data"
    }
}
