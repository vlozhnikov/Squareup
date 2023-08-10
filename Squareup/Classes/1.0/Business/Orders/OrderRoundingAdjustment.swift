//
//  OrderRoundingAdjustment.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 9.06.23.
//

import Foundation

/// - OrderRoundingAdjustment: A rounding adjustment of the money being returned.
/// Commonly used to apply cash rounding when the minimum unit of the account is smaller than the lowest physical denomination of the currency.
/// https://developer.squareup.com/reference/square/objects/OrderRoundingAdjustment
open class OrderRoundingAdjustment: Codable {
    
    /// - UID: A unique ID that identifies the rounding adjustment only within this order.
    /// Max Length 60
    public var UID: String?
    /// - Name: The name of the rounding adjustment from the original sale order.
    public var Name: String?
    /// - AmountMoney: The actual rounding adjustment amount.
    public var AmountMoney: Money?
    
    enum CodingKeys: String, CodingKey {
        case UID = "uid"
        case Name = "name"
        case AmountMoney = "amount_money"
    }
}
