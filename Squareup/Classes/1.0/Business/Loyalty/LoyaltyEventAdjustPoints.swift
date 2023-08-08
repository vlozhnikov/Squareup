//
//  LoyaltyEventAdjustPoints.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

/// - LoyaltyEventAdjustPoints: Provides metadata when the event type is ADJUST_POINTS.
/// https://developer.squareup.com/reference/square/objects/LoyaltyEventAdjustPoints
open class LoyaltyEventAdjustPoints: Codable {
    
    // - LoyaltyProgramId: Read only The ID of the loyalty program.
    /// Min Length  1
    /// Max Length 36
    var LoyaltyProgramId: String?
    /// - Points: Read only The loyalty points used to create the reward.
    var Points: Int?
    /// - Reason: The reason for the adjustment of points.
    var Reason: String?
    
    enum CodingKeys: String, CodingKey {
        case LoyaltyProgramId = "loyalty_program_id"
        case Points = "points"
        case Reason = "reason"
    }
}
