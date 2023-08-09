//
//  OrderReturn.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 9.06.23.
//

import Foundation

/// - OrderReturn: The set of line items, service charges, taxes, discounts, tips, and other items being returned in an order.
/// https://developer.squareup.com/reference/square/objects/OrderReturn
open class OrderReturn: Codable {
    
    /// - UID: A unique ID that identifies the return only within this order.
    /// Max Length 60
    public var UID: String?
    /// - SourceOrderId: An order that contains the original sale of these return line items. This is unset for unlinked returns.
    public var SourceOrderId: String?
    /// - ReturnLineItems: A collection of line items that are being returned.
    public var ReturnLineItems: [OrderReturnLineItem]?
    /// - ReturnServiceCharges: Read only A collection of service charges that are being returned.
    public var ReturnServiceCharges: [OrderReturnServiceCharge]?
    /// - ReturnTaxes: A collection of references to taxes being returned for an order, including the total applied tax amount to be returned. The taxes must reference a top-level tax ID from the source order.
    public var ReturnTaxes: [OrderReturnTax]?
    /// - ReturnDiscounts: A collection of references to discounts being returned for an order, including the total applied discount amount to be returned. The discounts must reference a top-level discount ID from the source order.
    public var ReturnDiscounts: [OrderReturnDiscount]?
    /// - RoundingAdjustment: A positive or negative rounding adjustment to the total value being returned. Adjustments are commonly used to apply cash rounding when the minimum unit of the account is smaller than the lowest physical denomination of the currency.
    public var RoundingAdjustment: OrderRoundingAdjustment?
    /// - ReturnAmounts: An aggregate monetary value being returned by this return entry.
    public var ReturnAmounts: OrderMoneyAmounts?
    
    enum CodingKeys: String, CodingKey {
        case UID = "uid"
        case SourceOrderId = "source_order_id"
        case ReturnLineItems = "return_line_items"
        case ReturnServiceCharges = "return_service_charges"
        case ReturnTaxes = "return_taxes"
        case ReturnDiscounts = "return_discounts"
        case RoundingAdjustment = "rounding_adjustment"
        case ReturnAmounts = "return_amounts"
    }
}
