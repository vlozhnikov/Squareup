//
//  CancelSubscriptionResponse.swift
//  Squareup
//
//  Created by user on 23.06.23.
//

import Foundation

open class CancelSubscriptionResponse: SquareupResponse {
    
    /// - subscription: The specified subscription scheduled for cancellation according to the action created by the request.
    public var subscription: Subscription?
    /// - Actions: A list of a single CANCEL action scheduled for the subscription.
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
