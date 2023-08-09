//
//  OrderReturnTax.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 9.06.23.
//

import Foundation

/// - OrderReturnTax: Represents a tax being returned that applies to one or more return line items in an order.
/// Fixed-amount, order-scoped taxes are distributed across all non-zero return line item totals. The amount distributed to each return line item is relative to that item’s contribution to the order subtotal.
/// https://developer.squareup.com/reference/square/objects/OrderReturnTax
open class OrderReturnTax: Codable {
    
    /// - UID: A unique ID that identifies the returned tax only within this order.
    /// Max Length 60
    public var UID: String?
    /// - SourceTaxUid: The tax uid from the order that contains the original tax charge.
    /// Max Length 60
    public var SourceTaxUid: String?
    /// - CatalogObjectId: The catalog object ID referencing CatalogTax.
    /// Max Length 192
    public var CatalogObjectId: String?
    /// - CatalogVersion: The version of the catalog object that this tax references.
    public var CatalogVersion: Int?
    /// - Name: The tax's name.
    /// Max Length 255
    public var Name: String?
    /// - type: Indicates the calculation method used to apply the tax.
    public var type: OrderLineItemTaxType?
    /// - Percentage: The percentage of the tax, as a string representation of a decimal number. For example, a value of "7.25" corresponds to a percentage of 7.25%.
    /// Max Length 10
    public var Percentage: String?
    /// - AppliedMoney: The amount of money applied by the tax in an order.
    public var AppliedMoney: Money?
    /// - Scope: Indicates the level at which the OrderReturnTax applies. For ORDER scoped taxes, Square generates references in applied_taxes on all OrderReturnLineItems. For LINE_ITEM scoped taxes, the tax is only applied to OrderReturnLineItems with references in their applied_discounts field.
    public var Scope: OrderLineItemTaxScope?
    
    enum CodingKeys: String, CodingKey {
        case UID = "uid"
        case SourceTaxUid = "source_tax_uid"
        case CatalogObjectId = "catalog_object_id"
        case CatalogVersion = "catalog_version"
        case Name = "name"
        case type = "type"
        case Percentage = "percentage"
        case AppliedMoney = "applied_money"
        case Scope = "scope"
    }
}
