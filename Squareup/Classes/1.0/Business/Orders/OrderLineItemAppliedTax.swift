//
//  OrderLineItemAppliedTax.swift
//  Squareup
//
//  Created by user on 9.06.23.
//

import Foundation

/// - OrderLineItemAppliedTax: Represents an applied portion of a tax to a line item in an order.
/// Order-scoped taxes automatically include the applied taxes in each line item. Line item taxes must be referenced from any applicable line items. The corresponding applied money is automatically computed, based on the set of participating line items.
/// https://developer.squareup.com/reference/square/objects/OrderLineItemAppliedTax
open class OrderLineItemAppliedTax: Codable {
    
    /// - UID: A unique ID that identifies the applied tax only within this order.
    /// Max Length 60
    public var UID: String?
    /// - TaxUid: The uid of the tax for which this applied tax represents. It must reference a tax present in the order.taxes field.
    /// This field is immutable. To change which taxes apply to a line item, delete and add a new OrderLineItemAppliedTax.
    /// Min Length 1
    /// Max Length 60
    public var TaxUid: String?
    /// - AppliedMoney: Read only The amount of money applied by the tax to the line item.
    public var AppliedMoney: Money?
    
    enum CodingKeys: String, CodingKey {
        case UID = "uid"
        case TaxUid = "tax_uid"
        case AppliedMoney = "applied_money"
    }
}
