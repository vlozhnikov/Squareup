//
//  CashPaymentDetails.swift
//  Squareup
//
//  Created by user on 13.06.23.
//

import Foundation

/// - CashPaymentDetails: Stores details about a cash payment.
/// Contains only non-confidential information. For more information, see Take Cash Payments.
/// https://developer.squareup.com/reference/square/objects/CashPaymentDetails
open class CashPaymentDetails: Codable {
    
    /// - BuyerSuppliedMoney: The amount and currency of the money supplied by the buyer.
    public var BuyerSuppliedMoney: Money?
    /// - ChangeBackMoney: The amount of change due back to the buyer. This read-only field is calculated from the amount_money and buyer_supplied_money fields.
    public var ChangeBackMoney: Money?
    
    enum CodingKeys: String, CodingKey {
        case BuyerSuppliedMoney = "buyer_supplied_money"
        case ChangeBackMoney = "change_back_money"
    }
}
