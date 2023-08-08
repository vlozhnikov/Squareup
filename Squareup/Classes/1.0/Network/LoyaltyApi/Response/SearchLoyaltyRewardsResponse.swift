//
//  SearchLoyaltyRewardsResponse.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

open class SearchLoyaltyRewardsResponse: SquareupResponse {
    
    /// - Rewards: The loyalty rewards that satisfy the search criteria. These are returned in descending order by updated_at.
    public var Rewards: [LoyaltyReward]?
    /// - Cursor: The pagination cursor to be used in a subsequent request. If empty, this is the final response.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Rewards = "rewards"
        case Cursor = "cursor"
    }
}
