//
//  ResumeSubscriptionResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 23.06.23.
//

import Foundation

open class ResumeSubscriptionResponse: SquareupResponse {
    
    /// - subscription: The resumed subscription.
    public var subscription: Subscription?
    /// - Actions: A list of RESUME actions created by the request and scheduled for the subscription.
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
