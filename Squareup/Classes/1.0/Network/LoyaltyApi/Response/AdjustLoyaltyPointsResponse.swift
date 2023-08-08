//
//  AdjustLoyaltyPointsResponse.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

open class AdjustLoyaltyPointsResponse: SquareupResponse {
    
    /// - Event: The resulting event data for the adjustment.
    var Event: LoyaltyEvent?
    
    enum CodingKeys: String, CodingKey {
        case Event = "event"
    }
}
