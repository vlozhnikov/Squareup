//
//  CancelSubscriptionResponse.swift
//  Squareup
//
//  Created by user on 23.06.23.
//

import Foundation

open class CancelSubscriptionResponse: SquareupResponse {
    
    /// - subscription: The specified subscription scheduled for cancellation according to the action created by the request.
    var subscription: Subscription?
    /// - Actions: A list of a single CANCEL action scheduled for the subscription.
    var Actions: [SubscriptionAction]?
    
    enum CodingKeys: String, CodingKey {
        case subscription = "subscription"
        case Actions = "actions"
    }
}
