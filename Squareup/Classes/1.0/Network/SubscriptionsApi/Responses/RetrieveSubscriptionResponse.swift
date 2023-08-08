//
//  RetrieveSubscriptionResponse.swift
//  Squareup
//
//  Created by user on 23.06.23.
//

import Foundation

open class RetrieveSubscriptionResponse: SquareupResponse {
    
    /// - subscription: The subscription retrieved.
    var subscription: Subscription?
    
    enum CodingKeys: String, CodingKey {
        case subscription = "subscription"
    }
}
