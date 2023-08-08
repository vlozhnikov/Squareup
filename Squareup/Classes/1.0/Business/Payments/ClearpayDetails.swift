//
//  ClearpayDetails.swift
//  Squareup
//
//  Created by user on 15.06.23.
//

import Foundation

/// - ClearpayDetails: Additional details about Clearpay payments.
/// https://developer.squareup.com/reference/square/objects/ClearpayDetails
open class ClearpayDetails: Codable {
    
    /// - EmailAddress: Email address on the buyer's Clearpay account
    /// Max Length 255
    public var EmailAddress: String?
    
    enum CodingKeys: String, CodingKey {
        case EmailAddress = "email_address"
    }
}
