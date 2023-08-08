//
//  RetrieveLoyaltyRewardResponse.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

open class RetrieveLoyaltyRewardResponse: SquareupResponse {
    
    /// - Reward: The loyalty reward retrieved.
    public var Reward: LoyaltyReward?
    
    enum CodingKeys: String, CodingKey {
        case Reward = "reward"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.Reward = try container.decodeIfPresent(LoyaltyReward.self, forKey: .Reward)
    }
}
