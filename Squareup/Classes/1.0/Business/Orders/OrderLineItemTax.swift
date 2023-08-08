//
//  OrderLineItemTax.swift
//  Squareup
//
//  Created by user on 9.06.23.
//

import Foundation

/// - OrderLineItemTax: Represents a tax that applies to one or more line item in the order.
/// Fixed-amount, order-scoped taxes are distributed across all non-zero line item totals. The amount distributed to each line item is relative to the amount the item contributes to the order subtotal.
/// https://developer.squareup.com/reference/square/objects/OrderLineItemTax
open class OrderLineItemTax: Codable {
    
    /// - UID: A unique ID that identifies the tax only within this order.
    /// Max Length 60
    var UID: String?
    /// - CatalogObjectId: The catalog object ID referencing CatalogTax.
    /// Max Length 192
    var CatalogObjectId: String?
    /// - CatalogVersion: The version of the catalog object that this tax references.
    var CatalogVersion: Int?
    /// - Name: The tax's name.
    /// Max Length 255
    var Name: String?
    /// - type: Indicates the calculation method used to apply the tax.
    var type: OrderLineItemTaxType?
    /// - Percentage: The percentage of the tax, as a string representation of a decimal number. For example, a value of "7.25" corresponds to a percentage of 7.25%.
    /// Max Length 10
    var Percentage: String?
    /// - Metadata: Application-defined data attached to this tax. Metadata fields are intended to store descriptive references or associations with an entity in another system or store brief information about the object. Square does not process this field; it only stores and returns it in relevant API calls. Do not use metadata to store any sensitive information (such as personally identifiable information or card details).
    /// Keys written by applications must be 60 characters or less and must be in the character set [a-zA-Z0-9_-]. Entries can also include metadata generated by Square. These keys are prefixed with a namespace, separated from the key with a ':' character.
    ///
    /// Values have a maximum length of 255 characters.
    ///
    /// An application can have up to 10 entries per metadata field.
    ///
    /// Entries written by applications are private and can only be read or modified by the same application.
    ///
    /// For more information, see Metadata.
    var Metadata: [String: String]?
    /// - AppliedMoney: The amount of money applied by the tax in the order
    var AppliedMoney: Money?
    /// - Scope: Indicates the level at which the tax applies. For ORDER scoped taxes, Square generates references in applied_taxes on all order line items that do not have them. For LINE_ITEM scoped taxes, the tax only applies to line items with references in their applied_taxes field.
    /// This field is immutable. To change the scope, you must delete the tax and re-add it as a new tax.
    var Scope: String?
    /// - AutoApplied: Read only Determines whether the tax was automatically applied to the order based on the catalog configuration. For an example, see Automatically Apply Taxes to an Order.
    var AutoApplied: Bool?
    
    enum CodingKeys: String, CodingKey {
        case UID = "uid"
        case CatalogObjectId = "catalog_object_id"
        case CatalogVersion = "catalog_version"
        case Name = "name"
        case type = "type"
        case Percentage = "percentage"
        case Metadata = "metadata"
        case AppliedMoney = "applied_money"
        case Scope = "scope"
        case AutoApplied = "auto_applied"
    }
}
