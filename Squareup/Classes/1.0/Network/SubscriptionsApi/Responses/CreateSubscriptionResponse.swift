//
//  CreateSubscriptionResponse.swift
//  Squareup
//
//  Created by user on 23.06.23.
//

import Foundation

open class CreateSubscriptionResponse: SquareupResponse {
    
    /// - subscription: The newly created subscription.
    var subscription: Subscription?
    
    enum CodingKeys: String, CodingKey {
        case subscription = "subscription"
    }
}
