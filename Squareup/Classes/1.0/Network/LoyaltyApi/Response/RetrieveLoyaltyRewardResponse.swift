//
//  RetrieveLoyaltyRewardResponse.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

open class RetrieveLoyaltyRewardResponse: SquareupResponse {
    
    /// - Reward: The loyalty reward retrieved.
    var Reward: LoyaltyReward?
    
    enum CodingKeys: String, CodingKey {
        case Reward = "reward"
    }
}
