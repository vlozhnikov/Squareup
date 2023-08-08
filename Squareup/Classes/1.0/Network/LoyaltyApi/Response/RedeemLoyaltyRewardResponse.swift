//
//  RedeemLoyaltyRewardResponse.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

open class RedeemLoyaltyRewardResponse: SquareupResponse {
    
    /// - Event: The LoyaltyEvent for redeeming the reward.
    var Event: LoyaltyEvent?
    
    enum CodingKeys: String, CodingKey {
        case Event = "event"
    }
}
