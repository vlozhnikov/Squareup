//
//  DeleteSubscriptionResponse.swift
//  Squareup
//
//  Created by user on 23.06.23.
//

import Foundation

open class DeleteSubscriptionResponse: SquareupResponse {
    
    /// - subscription: The subscription that has the specified action deleted.
    public var subscription: Subscription?
    
    enum CodingKeys: String, CodingKey {
        case subscription = "subscription"
    }
}
