//
//  OrderReturnLineItem.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 9.06.23.
//

import Foundation

/// - OrderReturnLineItem: The line item being returned in an order.
/// https://developer.squareup.com/reference/square/objects/OrderReturnLineItem
open class OrderReturnLineItem: Codable {
    
    /// - UID: A unique ID for this return line-item entry.
    /// Max Length 60
    public var UID: String?
    /// - SourceLineItemUid: The uid of the line item in the original sale order.
    /// Max Length 60
    public var SourceLineItemUid: String?
    /// - Name: The name of the line item.
    /// Max Length 512
    public var Name: String?
    /// - Quantity: The quantity returned, formatted as a decimal number. For example, "3".
    /// Line items with a quantity_unit can have non-integer quantities. For example, "1.70000".
    /// Min Length 1
    /// Max Length 12
    public var Quantity: String?
    /// - QuantityUnit: The unit and precision that this return line item's quantity is measured in.
    public var QuantityUnit: OrderQuantityUnit?
    /// - Note: The note of the return line item.
    /// Max Length 2000
    public var Note: String?
    /// - CatalogObjectId: The CatalogItemVariation ID applied to this return line item.
    /// Max Length 192
    public var CatalogObjectId: String?
    /// - CatalogVersion: The version of the catalog object that this line item references.
    public var CatalogVersion: Int?
    /// - VariationName: The name of the variation applied to this return line item.
    /// Max Length 400
    public var VariationName: String?
    /// - ItemType: The type of line item: an itemized return, a non-itemized return (custom amount), or the return of an unactivated gift card sale.
    public var ItemType: OrderLineItemItemType?
    /// - ReturnModifiers: The CatalogModifiers applied to this line item.
    public var ReturnModifiers: [OrderReturnLineItemModifier]?
    /// - AppliedTaxes: The list of references to OrderReturnTax entities applied to the return line item. Each OrderLineItemAppliedTax has a tax_uid that references the uid of a top-level OrderReturnTax applied to the return line item. On reads, the applied amount is populated.
    public var AppliedTaxes: [OrderLineItemAppliedTax]?
    /// - AppliedDiscounts: The list of references to OrderReturnDiscount entities applied to the return line item. Each OrderLineItemAppliedDiscount has a discount_uid that references the uid of a top-level OrderReturnDiscount applied to the return line item. On reads, the applied amount is populated.
    public var AppliedDiscounts: [OrderLineItemAppliedDiscount]?
    /// - BasePriceMoney: The base price for a single unit of the line item.
    public var BasePriceMoney: Money?
    /// - VariationTotalPriceMoney: Read only The total price of all item variations returned in this line item. The price is calculated as base_price_money multiplied by quantity and does not include modifiers.
    public var VariationTotalPriceMoney: Money?
    /// - GrossReturnMoney: Read only The gross return amount of money calculated as (item base price + modifiers price) * quantity.
    public var GrossReturnMoney: Money?
    /// - TotalTaxMoney: Read only The total amount of tax money to return for the line item.
    public var TotalTaxMoney: Money?
    /// - TotalDiscountMoney: Read only The total amount of discount money to return for the line item.
    public var TotalDiscountMoney: Money?
    /// - TotalMoney: Read only The total amount of money to return for this line item.
    public var TotalMoney: Money?
    /// - AppliedServiceCharges: The list of references to OrderReturnServiceCharge entities applied to the return line item. Each OrderLineItemAppliedServiceCharge has a service_charge_uid that references the uid of a top-level OrderReturnServiceCharge applied to the return line item. On reads, the applied amount is populated.
    public var AppliedServiceCharges: [OrderLineItemAppliedServiceCharge]?
    /// - TotalServiceChargeMoney: Read only The total amount of apportioned service charge money to return for the line item.
    public var TotalServiceChargeMoney: Money?
    
    enum CodingKeys: String, CodingKey {
        case UID = "uid"
        case SourceLineItemUid = "source_line_item_uid"
        case Name = "name"
        case Quantity = "quantity"
        case QuantityUnit = "quantity_unit"
        case Note = "note"
        case CatalogObjectId = "catalog_object_id"
        case CatalogVersion = "catalog_version"
        case VariationName = "variation_name"
        case ItemType = "item_type"
        case ReturnModifiers = "return_modifiers"
        case AppliedTaxes = "applied_taxes"
        case AppliedDiscounts = "applied_discounts"
        case BasePriceMoney = "base_price_money"
        case VariationTotalPriceMoney = "variation_total_price_money"
        case GrossReturnMoney = "gross_return_money"
        case TotalTaxMoney = "total_tax_money"
        case TotalDiscountMoney = "total_discount_money"
        case TotalMoney = "total_money"
        case AppliedServiceCharges = "applied_service_charges"
        case TotalServiceChargeMoney = "total_service_charge_money"
    }
}
