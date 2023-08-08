//
//  CreateLoyaltyRewardResponse.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

open class CreateLoyaltyRewardResponse: SquareupResponse {
    
    /// - Reward: The loyalty reward created.
    var Reward: LoyaltyReward?
    
    enum CodingKeys: String, CodingKey {
        case Reward = "reward"
    }
}
