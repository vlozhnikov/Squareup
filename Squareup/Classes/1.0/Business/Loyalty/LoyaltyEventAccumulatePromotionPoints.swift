//
//  LoyaltyEventAccumulatePromotionPoints.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

/// - LoyaltyEventAccumulatePromotionPoints: Provides metadata when the event type is ACCUMULATE_PROMOTION_POINTS.
/// https://developer.squareup.com/reference/square/objects/LoyaltyEventAccumulatePromotionPoints
open class LoyaltyEventAccumulatePromotionPoints: Codable {
    
    /// - LoyaltyProgramId: Read only The Square-assigned ID of the loyalty program.
    /// Max Length 36
    public var LoyaltyProgramId: String?
    /// - LoyaltyPromotionId: Read only The Square-assigned ID of the loyalty promotion.
    /// Min Length 1
    /// Max Length 255
    public var LoyaltyPromotionId: String?
    /// - Points: Read only The number of points earned by the event.
    public var Points: Int?
    /// - OrderId: Read only The ID of the order for which the buyer earned the promotion points. Only applications that use the Orders API to process orders can trigger this event.
    /// Min Length 1
    public var OrderId: String?
    
    enum CodingKeys: String, CodingKey {
        case LoyaltyProgramId = "loyalty_program_id"
        case LoyaltyPromotionId = "loyalty_promotion_id"
        case Points = "points"
        case OrderId = "order_id"
    }
}
