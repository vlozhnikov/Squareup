//
//  RetrieveSubscriptionResponse.swift
//  Squareup
//
//  Created by user on 23.06.23.
//

import Foundation

open class RetrieveSubscriptionResponse: SquareupResponse {
    
    /// - subscription: The subscription retrieved.
    public var subscription: Subscription?
    
    enum CodingKeys: String, CodingKey {
        case subscription = "subscription"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.subscription = try container.decodeIfPresent(Subscription.self, forKey: .subscription)
    }
}
