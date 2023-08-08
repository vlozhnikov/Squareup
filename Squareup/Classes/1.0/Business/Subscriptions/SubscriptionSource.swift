//
//  SubscriptionSource.swift
//  Squareup
//
//  Created by user on 23.06.23.
//

import Foundation

/// - SubscriptionSource: The origination details of the subscription.
/// https://developer.squareup.com/reference/square/objects/SubscriptionSource
open class SubscriptionSource: Codable {
    
    /// - Name: The name used to identify the place (physical or digital) that a subscription originates. If unset, the name defaults to the name of the application that created the subscription.
    /// Max Length 255
    public var Name: String?
    
    enum CodingKeys: String, CodingKey {
        case Name = "name"
    }
}
