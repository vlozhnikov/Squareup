//
//  GiftCardActivityBlock.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

/// - GiftCardActivityBlock: Represents details about a BLOCK gift card activity type.
/// https://developer.squareup.com/reference/square/objects/GiftCardActivityBlock
open class GiftCardActivityBlock: Codable {
    
    /// - Reason: The reason the gift card was blocked.
    var Reason: String?
    
    enum CodingKeys: String, CodingKey {
        case Reason = "reason"
    }
}