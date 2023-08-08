//
//  SwapPlanResponse.swift
//  Squareup
//
//  Created by user on 23.06.23.
//

import Foundation

open class SwapPlanResponse: SquareupResponse {
    
    /// - subscription: The subscription with the updated subscription plan.
    var subscription: Subscription?
    /// - Actions: A list of a SWAP_PLAN action created by the request.
    var Actions: [SubscriptionAction]?
    
    enum CodingKeys: String, CodingKey {
        case subscription = "subscription"
        case Actions = "actions"
    }
}
