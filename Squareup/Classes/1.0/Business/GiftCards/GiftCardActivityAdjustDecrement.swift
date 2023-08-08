//
//  GiftCardActivityAdjustDecrement.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

/// - GiftCardActivityAdjustDecrement: Represents details about an ADJUST_DECREMENT gift card activity type.
/// https://developer.squareup.com/reference/square/objects/GiftCardActivityAdjustDecrement
open class GiftCardActivityAdjustDecrement: Codable {
    
    /// - AmountMoney: The amount deducted from the gift card balance. This value is a positive integer.
    public var AmountMoney: Money?
    /// - Reason: The reason the gift card balance was adjusted.
    public var Reason: String?
    
    enum CodingKeys: String, CodingKey {
        case AmountMoney = "amount_money"
        case Reason = "reason"
    }
}

