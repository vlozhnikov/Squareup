//
//  PauseSubscriptionResponse.swift
//  Squareup
//
//  Created by user on 23.06.23.
//

import Foundation

open class PauseSubscriptionResponse: SquareupResponse {
    
    /// - subscription: The subscription to be paused by the scheduled PAUSE action.
    var subscription: Subscription?
    /// - Actions: The list of a PAUSE action and a possible RESUME action created by the request.
    var Actions: [SubscriptionAction]?
    
    enum CodingKeys: String, CodingKey {
        case subscription = "subscription"
        case Actions = "actions"
    }
}
