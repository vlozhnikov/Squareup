//
//  LoyaltyEventExpirePoints.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

/// - LoyaltyEventExpirePoints: Provides metadata when the event type is EXPIRE_POINTS.
/// https://developer.squareup.com/reference/square/objects/LoyaltyEventExpirePoints
open class LoyaltyEventExpirePoints: Codable {
    
    /// - LoyaltyProgramId: Read only The ID of the loyalty program.
    /// Min Length  1
    /// Max Length 36
    var LoyaltyProgramId: String?
    /// - Points: Read only The loyalty points used to create the reward.
    var Points: Int?
    
    enum CodingKeys: String, CodingKey {
        case LoyaltyProgramId = "loyalty_program_id"
        case Points = "points"
    }
}
