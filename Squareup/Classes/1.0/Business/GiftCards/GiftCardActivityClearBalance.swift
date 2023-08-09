//
//  GiftCardActivityClearBalance.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.08.23.
//

import Foundation

/// - GiftCardActivityClearBalance: Represents details about a CLEAR_BALANCE gift card activity type.
/// https://developer.squareup.com/reference/square/objects/GiftCardActivityClearBalance
open class GiftCardActivityClearBalance: Codable {
    
    /// - Reason: The reason the gift card balance was cleared.
    public var Reason: String?
    
    enum CodingKeys: String, CodingKey {
        case Reason = "reason"
    }
}
