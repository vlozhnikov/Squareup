//
//  RedeemLoyaltyRewardResponse.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

open class RedeemLoyaltyRewardResponse: SquareupResponse {
    
    /// - Event: The LoyaltyEvent for redeeming the reward.
    public var Event: LoyaltyEvent?
    
    enum CodingKeys: String, CodingKey {
        case Event = "event"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.Event = try container.decodeIfPresent(LoyaltyEvent.self, forKey: .Event)
    }
}
