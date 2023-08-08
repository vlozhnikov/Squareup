//
//  OrderReward.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

/// - OrderReward: Represents a reward that can be applied to an order if the necessary reward tier criteria are met.
/// Rewards are created through the Loyalty API.
/// https://developer.squareup.com/reference/square/objects/OrderReward
open class OrderReward: Codable {
    
    /// - Id: The identifier of the reward.
    /// Min Length 1
    var Id: String?
    /// - RewardTierId: The identifier of the reward tier corresponding to this reward.
    /// Min Length 1
    var RewardTierId: String?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case RewardTierId = "reward_tier_id"
    }
}
