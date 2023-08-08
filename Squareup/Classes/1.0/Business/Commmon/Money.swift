//
//  Money.swift
//  Business Calendar
//
//  Created by user on 1.05.23.
//

import Foundation

/// - Money: Represents an amount of money.
/// Money fields can be signed or unsigned. Fields that do not explicitly define whether they are signed or unsigned are considered unsigned and can only hold positive amounts. For signed fields, the sign of the value indicates the purpose of the money transfer. See Working with Monetary Amounts for more information.
/// https://developer.squareup.com/reference/square/objects/Money
open class Money: Codable {
    
    /// - Amount: The amount of money, in the smallest denomination of the currency indicated by currency. For example, when currency is USD, amount is in cents. Monetary amounts can be positive or negative. See the specific field description to determine the meaning of the sign in a particular case.
    var Amount: Int?
    /// - Currency: The type of currency, in ISO 4217 format. For example, the currency code for US dollars is USD.
    var currency: Currency?
    
    enum CodingKeys: String, CodingKey {
        case Amount = "amount"
        case currency = "currency"
    }
}
