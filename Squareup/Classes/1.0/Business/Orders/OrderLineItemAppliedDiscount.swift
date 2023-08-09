//
//  OrderLineItemAppliedDiscount.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 9.06.23.
//

import Foundation

/// - OrderLineItemAppliedDiscount: Represents an applied portion of a discount to a line item in an order.
/// Order scoped discounts have automatically applied discounts present for each line item. Line-item scoped discounts must have applied discounts added manually for any applicable line items. The corresponding applied money is automatically computed based on participating line items.
/// https://developer.squareup.com/reference/square/objects/OrderLineItemAppliedDiscount
open class OrderLineItemAppliedDiscount: Codable {
    
    /// - UID: A unique ID that identifies the applied discount only within this order.
    /// Max Length 60
    public var UID: String?
    /// - DiscountUid: The uid of the discount that the applied discount represents. It must reference a discount present in the order.discounts field.
    /// This field is immutable. To change which discounts apply to a line item, you must delete the discount and re-add it as a new OrderLineItemAppliedDiscount.
    /// Min Length 1
    /// Max Length 60
    public var DiscountUid: String?
    /// - AppliedMoney: Read only The amount of money applied by the discount to the line item.
    public var AppliedMoney: Money?
    
    enum CodingKeys: String, CodingKey {
        case UID = "uid"
        case DiscountUid = "discount_uid"
        case AppliedMoney = "applied_money"
    }
}
