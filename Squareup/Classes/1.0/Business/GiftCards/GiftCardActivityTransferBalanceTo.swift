//
//  GiftCardActivityTransferBalanceTo.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

/// - GiftCardActivityTransferBalanceTo: Represents details about a TRANSFER_BALANCE_TO gift card activity type.
/// https://developer.squareup.com/reference/square/objects/GiftCardActivityTransferBalanceTo
open class GiftCardActivityTransferBalanceTo: Codable {
    
    /// - TransferFromGiftCardId: The ID of the gift card from which the specified amount was transferred.
    public var TransferFromGiftCardId: String?
    /// - AmountMoney: The amount added to the gift card balance for the transfer. This value is a positive integer.
    public var AmountMoney: Money?
    
    enum CodingKeys: String, CodingKey {
        case TransferFromGiftCardId = "transfer_from_gift_card_id"
        case AmountMoney = "amount_money"
    }
}
