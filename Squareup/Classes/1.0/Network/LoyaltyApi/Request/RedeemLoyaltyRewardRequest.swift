//
//  RedeemLoyaltyRewardRequest.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

internal class RedeemLoyaltyRewardRequest: Codable {
    
    /// - IdempotencyKey: A unique string that identifies this RedeemLoyaltyReward request. Keys can be any valid string, but must be unique for every request.
    /// Min Length 1
    /// Max Length 128
    var IdempotencyKey: String?
    /// - LocationId: The ID of the location where the reward is redeemed.
    /// Min Length 1
    var LocationId: String?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case LocationId = "location_id"
    }
}
