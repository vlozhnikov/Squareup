//
//  GiftCardActivityAdjustIncrement.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.08.23.
//

import Foundation

/// - GiftCardActivityAdjustIncrement: Represents details about an ADJUST_INCREMENT gift card activity type.
/// https://developer.squareup.com/reference/square/objects/GiftCardActivityAdjustIncrement
open class GiftCardActivityAdjustIncrement: Codable {
    
    /// - AmountMoney: The amount added to the gift card balance. This value is a positive integer.
    public var AmountMoney: Money?
    /// - Reason: The reason the gift card balance was adjusted.
    public var Reason: String?
    
    enum CodingKeys: String, CodingKey {
        case AmountMoney = "amount_money"
        case Reason = "reason"
    }
}
