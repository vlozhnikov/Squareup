//
//  GiftCardActivityTransferBalanceFrom.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.08.23.
//

import Foundation

/// - GiftCardActivityTransferBalanceFrom: Represents details about a TRANSFER_BALANCE_FROM gift card activity type.
/// https://developer.squareup.com/reference/square/objects/GiftCardActivityTransferBalanceFrom
open class GiftCardActivityTransferBalanceFrom: Codable {
    
    /// - TransferFromGiftCardId: The ID of the gift card from which the specified amount was transferred.
    public var TransferToGiftCardId: String?
    /// - AmountMoney: The amount deducted from the gift card for the transfer. This value is a positive integer.
    public var AmountMoney: Money?
    
    enum CodingKeys: String, CodingKey {
        case TransferToGiftCardId = "transfer_to_gift_card_id"
        case AmountMoney = "amount_money"
    }
}
