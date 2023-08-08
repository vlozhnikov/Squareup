//
//  GiftCardActivityDeactivate.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

/// - GiftCardActivityDeactivate: Represents details about a DEACTIVATE gift card activity type.
/// https://developer.squareup.com/reference/square/objects/GiftCardActivityDeactivate
open class GiftCardActivityDeactivate: Codable {
    
    /// - Reason: The reason the gift card was deactivated.
    var Reason: String?
    
    enum CodingKeys: String, CodingKey {
        case Reason = "reason"
    }
}
