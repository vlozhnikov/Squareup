//
//  LoyaltyEventCreateReward.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

/// - LoyaltyEventCreateReward: Provides metadata when the event type is CREATE_REWARD.
/// https://developer.squareup.com/reference/square/objects/LoyaltyEventCreateReward
open class LoyaltyEventCreateReward: Codable {
    
    /// - LoyaltyProgramId: Read only The ID of the loyalty program.
    /// Min Length  1
    /// Max Length 36
    var LoyaltyProgramId: String?
    /// - RewardId: Read only The Square-assigned ID of the created loyalty reward. This field is returned only if the event source is LOYALTY_API.
    /// Max Length 36
    var RewardId: String?
    /// - Points: Read only The loyalty points used to create the reward.
    var Points: Int?
    
    enum CodingKeys: String, CodingKey {
        case LoyaltyProgramId = "loyalty_program_id"
        case RewardId = "reward_id"
        case Points = "points"
    }
}
