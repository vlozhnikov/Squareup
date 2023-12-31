//
//  CalculateLoyaltyPointsResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

open class CalculateLoyaltyPointsResponse: SquareupResponse {
    
    /// - Points: The number of points that the buyer can earn from the base loyalty program.
    public var Points: Int?
    /// - PromotionPoints: The number of points that the buyer can earn from a loyalty promotion. To be eligible to earn promotion points, the purchase must first qualify for program points. When order_id is not provided in the request, this value is always 0.
    public var PromotionPoints: Int?
    
    enum CodingKeys: String, CodingKey {
        case Points = "points"
        case PromotionPoints = "promotion_points"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Points = try container.decodeIfPresent(Int.self, forKey: .Points)
        self.PromotionPoints = try container.decodeIfPresent(Int.self, forKey: .PromotionPoints)
    }
}
