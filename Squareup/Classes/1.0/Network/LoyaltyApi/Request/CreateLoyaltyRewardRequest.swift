//
//  CreateLoyaltyRewardRequest.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

internal class CreateLoyaltyRewardRequest: Codable {
    
    /// - Reward: The reward to create.
    var Reward: LoyaltyReward?
    /// - IdempotencyKey: A unique string that identifies this CreateLoyaltyReward request. Keys can be any valid string, but must be unique for every request.
    /// Min Length 1
    /// Max Length 128
    var IdempotencyKey: String?
    
    enum CodingKeys: String, CodingKey {
        case Reward = "reward"
        case IdempotencyKey = "idempotency_key"
    }
}
