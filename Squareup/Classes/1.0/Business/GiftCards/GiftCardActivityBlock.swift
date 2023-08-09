//
//  GiftCardActivityBlock.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.08.23.
//

import Foundation

/// - GiftCardActivityBlock: Represents details about a BLOCK gift card activity type.
/// https://developer.squareup.com/reference/square/objects/GiftCardActivityBlock
open class GiftCardActivityBlock: Codable {
    
    /// - Reason: The reason the gift card was blocked.
    public var Reason: String?
    
    enum CodingKeys: String, CodingKey {
        case Reason = "reason"
    }
}
