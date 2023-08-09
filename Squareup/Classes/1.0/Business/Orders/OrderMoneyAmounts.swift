//
//  OrderMoneyAmounts.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 9.06.23.
//

import Foundation

/// - OrderMoneyAmounts: A collection of various money amounts.
/// https://developer.squareup.com/reference/square/objects/OrderMoneyAmounts
open class OrderMoneyAmounts: Codable {
    
    /// - TotalMoney: The total money.
    public var TotalMoney: Money?
    /// - TaxMoney: The money associated with taxes.
    public var TaxMoney: Money?
    /// - DiscountMoney: The money associated with discounts.
    public var DiscountMoney: Money?
    /// - TipMoney: The money associated with tips.
    public var TipMoney: Money?
    /// - ServiceChargeMoney: The money associated with service charges.
    public var ServiceChargeMoney: Money?
    
    enum CodingKeys: String, CodingKey {
        case TotalMoney = "total_money"
        case TaxMoney = "tax_money"
        case DiscountMoney = "discount_money"
        case TipMoney = "tip_money"
        case ServiceChargeMoney = "service_charge_money"
    }
}
