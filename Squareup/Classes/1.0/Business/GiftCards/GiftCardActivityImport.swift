//
//  GiftCardActivityImport.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

/// - GiftCardActivityImport: Represents details about an IMPORT gift card activity type.
/// This activity type is used when Square imports a third-party gift card, in which case the gan_source of the gift card is set to OTHER.
/// https://developer.squareup.com/reference/square/objects/GiftCardActivityImport
open class GiftCardActivityImport: Codable {
    
    /// - AmountMoney: The balance amount on the imported gift card.
    var AmountMoney: Money?
    
    enum CodingKeys: String, CodingKey {
        case AmountMoney = "amount_money"
    }
}
