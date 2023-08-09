//
//  UpdateSubscriptionResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 23.06.23.
//

import Foundation

open class UpdateSubscriptionResponse: SquareupResponse {
    
    /// - subscription: The updated subscription.
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
