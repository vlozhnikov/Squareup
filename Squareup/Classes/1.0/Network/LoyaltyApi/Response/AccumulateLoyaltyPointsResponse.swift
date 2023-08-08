//
//  AccumulateLoyaltyPointsResponse.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

open class AccumulateLoyaltyPointsResponse: SquareupResponse {
    
    /// - Event: Deprecated
    /// The resulting loyalty event. Starting in Square version 2022-08-17, this field is no longer returned.
    public var Event: LoyaltyEvent?
    /// - Events: The resulting loyalty events. If the purchase qualifies for points, the ACCUMULATE_POINTS event is always included. When using the Orders API, the ACCUMULATE_PROMOTION_POINTS event is included if the purchase also qualifies for a loyalty promotion.
    public var Events: [LoyaltyEvent]?
    
    enum CodingKeys: String, CodingKey {
        case Event = "event"
        case Events = "events"
    }
}
