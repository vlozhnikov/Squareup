//
//  ResumeSubscriptionResponse.swift
//  Squareup
//
//  Created by user on 23.06.23.
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
}
