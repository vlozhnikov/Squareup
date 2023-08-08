//
//  SwapPlanResponse.swift
//  Squareup
//
//  Created by user on 23.06.23.
//

import Foundation

open class SwapPlanResponse: SquareupResponse {
    
    /// - subscription: The subscription with the updated subscription plan.
    public var subscription: Subscription?
    /// - Actions: A list of a SWAP_PLAN action created by the request.
    public var Actions: [SubscriptionAction]?
    
    enum CodingKeys: String, CodingKey {
        case subscription = "subscription"
        case Actions = "actions"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.subscription = try container.decodeIfPresent(Subscription.self, forKey: .subscription)
        self.Actions = try container.decodeIfPresent([SubscriptionAction].self, forKey: .Actions)
    }
}
