//
//  PauseSubscriptionResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 23.06.23.
//

import Foundation

open class PauseSubscriptionResponse: SquareupResponse {
    
    /// - subscription: The subscription to be paused by the scheduled PAUSE action.
    public var subscription: Subscription?
    /// - Actions: The list of a PAUSE action and a possible RESUME action created by the request.
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
