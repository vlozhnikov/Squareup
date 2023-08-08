//
//  SubscriptionEventInfo.swift
//  Squareup
//
//  Created by user on 23.06.23.
//

import Foundation

/// - SubscriptionEventInfo: Provides information about the subscription event.
/// https://developer.squareup.com/reference/square/objects/SubscriptionEventInfo
open class SubscriptionEventInfo: Codable {
    
    /// - Detail: A human-readable explanation for the event.
    public var Detail: SearchSubscriptionsFilter?
    /// - Code: An info code indicating the subscription event that occurred.
    public var Code: SubscriptionEventInfoCode?
    
    enum CodingKeys: String, CodingKey {
        case Detail = "detail"
        case Code = "code"
    }
}
