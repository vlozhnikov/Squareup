//
//  LoyaltyEventAccumulatePoints.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

/// - LoyaltyEventAccumulatePoints: Provides metadata when the event type is ACCUMULATE_POINTS.
/// https://developer.squareup.com/reference/square/objects/LoyaltyEventAccumulatePoints
open class LoyaltyEventAccumulatePoints: Codable {
    
    /// - LoyaltyProgramId: Read only The ID of the loyalty program.
    /// Max Length 36
    var LoyaltyProgramId: String?
    /// - Points: The number of points accumulated by the event.
    /// Min 1
    var Points: Int?
    /// - OrderId: The ID of the order for which the buyer accumulated the points. This field is returned only if the Orders API is used to process orders.
    var OrderId: String?
    
    enum CodingKeys: String, CodingKey {
        case LoyaltyProgramId = "loyalty_program_id"
        case Points = "points"
        case OrderId = "order_id"
    }
}
