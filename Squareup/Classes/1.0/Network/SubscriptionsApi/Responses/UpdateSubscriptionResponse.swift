//
//  UpdateSubscriptionResponse.swift
//  Squareup
//
//  Created by user on 23.06.23.
//

import Foundation

open class UpdateSubscriptionResponse: SquareupResponse {
    
    /// - subscription: The updated subscription.
    public var subscription: Subscription?
    
    enum CodingKeys: String, CodingKey {
        case subscription = "subscription"
    }
}
