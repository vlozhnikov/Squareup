//
//  OrderReturnDiscount.swift
//  Squareup
//
//  Created by user on 9.06.23.
//

import Foundation

/// - OrderReturnDiscountBeta: Represents a discount being returned that applies to one or more return line items in an order.
/// Fixed-amount, order-scoped discounts are distributed across all non-zero return line item totals. The amount distributed to each return line item is relative to that item’s contribution to the order subtotal.
/// https://developer.squareup.com/reference/square/objects/OrderReturnDiscount
open class OrderReturnDiscount: Codable {
    
    /// - UID: A unique ID that identifies the returned discount only within this order.
    /// Max Length 60
    var UID: String?
    /// - SourceDiscountUid: The discount uid from the order that contains the original application of this discount.
    /// Max Length 60
    var SourceDiscountUid: String?
    /// - CatalogObjectId: The catalog object ID referencing CatalogDiscount.
    /// Max Length 192
    var CatalogObjectId: String?
    /// - CatalogVersion: The version of the catalog object that this discount references.
    var CatalogVersion: Int?
    /// - Name: The discount's name.
    /// Max Length 255
    var Name: String?
    /// - type: The type of the discount. If it is created by the API, it is FIXED_PERCENTAGE or FIXED_AMOUNT.
    /// Discounts that do not reference a catalog object ID must have a type of FIXED_PERCENTAGE or FIXED_AMOUNT.
    var type: OrderLineItemDiscountType?
    /// - Percentage: The percentage of the tax, as a string representation of a decimal number. A value of "7.25" corresponds to a percentage of 7.25%.
    /// percentage is not set for amount-based discounts.
    /// Max Length 10
    var Percentage: String?
    /// - AmountMoney:
    /// The total declared monetary amount of the discount.
    /// amount_money is not set for percentage-based discounts.
    var AmountMoney: Money?
    /// - AppliedMoney: The amount of discount actually applied to this line item. When an amount-based discount is at the order level, this value is different from amount_money because the discount is distributed across the line items.
    var AppliedMoney: Money?
    /// - Scope: Indicates the level at which the OrderReturnDiscount applies. For ORDER scoped discounts, the server generates references in applied_discounts on all OrderReturnLineItems. For LINE_ITEM scoped discounts, the discount is only applied to OrderReturnLineItems with references in their applied_discounts field.
    var Scope: OrderLineItemDiscountScope?
    
    enum CodingKeys: String, CodingKey {
        case UID = "uid"
        case SourceDiscountUid = "source_discount_uid"
        case CatalogObjectId = "catalog_object_id"
        case CatalogVersion = "catalog_version"
        case Name = "name"
        case type = "type"
        case Percentage = "percentage"
        case AmountMoney = "amount_money"
        case AppliedMoney = "applied_money"
        case Scope = "scope"
    }
}
