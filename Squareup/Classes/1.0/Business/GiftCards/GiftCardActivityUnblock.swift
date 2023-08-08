//
//  GiftCardActivityUnblock.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

/// - GiftCardActivityUnblock: Represents details about an UNBLOCK gift card activity type.
/// https://developer.squareup.com/reference/square/objects/GiftCardActivityUnblock
open class GiftCardActivityUnblock: Codable {
    
    /// - Reason: The reason the gift card was unblocked.
    var Reason: String?
    
    enum CodingKeys: String, CodingKey {
        case Reason = "reason"
    }
}
