//
//  GiftCardActivityImportReversal.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

/// - GiftCardActivityImportReversal: Represents details about an IMPORT_REVERSAL gift card activity type.
/// https://developer.squareup.com/reference/square/objects/GiftCardActivityImportReversal
open class GiftCardActivityImportReversal: Codable {
    
    /// - AmountMoney: The amount of money cleared from the third-party gift card when the import was reversed.
    var AmountMoney: Money?
    
    enum CodingKeys: String, CodingKey {
        case AmountMoney = "amount_money"
    }
}
