//
//  SearchLoyaltyRewardsRequestLoyaltyRewardQuery.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

/// - SearchLoyaltyRewardsRequestLoyaltyRewardQuery: The set of search requirements.
/// https://developer.squareup.com/reference/square/objects/SearchLoyaltyRewardsRequestLoyaltyRewardQuery
open class SearchLoyaltyRewardsRequestLoyaltyRewardQuery: Codable {
    
    /// - LoyaltyAccountId: The ID of the loyalty account to which the loyalty reward belongs.
    /// Min Length 1
    var LoyaltyAccountId: String?
    /// - Status: The status of the loyalty reward.
    var Status: LoyaltyRewardStatus?
    
    enum CodingKeys: String, CodingKey {
        case LoyaltyAccountId = "loyalty_account_id"
        case Status = "status"
    }
}
