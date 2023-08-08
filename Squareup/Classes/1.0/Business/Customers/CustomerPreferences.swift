//
//  CustomerPreferences.swift
//  Squareup
//
//  Created by user on 8.06.23.
//

import Foundation

/// - CustomerPreferences: Represents communication preferences for the customer profile.
/// https://developer.squareup.com/reference/square/objects/CustomerPreferences
open class CustomerPreferences: Codable {
    
    /// - EmailUnsubscribed: Indicates whether the customer has unsubscribed from marketing campaign emails. A value of true means that the customer chose to opt out of email marketing from the current Square seller or from all Square sellers. This value is read-only from the Customers API.
    var EmailUnsubscribed: String?
    
    enum CodingKeys: String, CodingKey {
        case EmailUnsubscribed = "email_unsubscribed"
    }
}
