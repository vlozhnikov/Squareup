//
//  OrderReturnLineItemModifier.swift
//  Squareup
//
//  Created by user on 9.06.23.
//

import Foundation

/// - OrderReturnLineItemModifier: A line item modifier being returned.
/// https://developer.squareup.com/reference/square/objects/OrderReturnLineItemModifier
open class OrderReturnLineItemModifier: Codable {
    
    /// - UID: A unique ID that identifies the return modifier only within this order.
    /// Max Length 60
    var UID: String?
    /// - SourceModifierUid: The modifier uid from the order's line item that contains the original sale of this line item modifier.
    /// Max Length 60
    var SourceModifierUid: String?
    /// - CatalogObjectId: The catalog object ID referencing CatalogModifier.
    /// Max Length 192
    var CatalogObjectId: String?
    /// - CatalogVersion: The version of the catalog object that this line item modifier references.
    var CatalogVersion: Int?
    /// - Name: The name of the item modifier.
    /// Max Length 255
    var Name: String?
    /// - BasePriceMoney: The base price for the modifier.
    /// base_price_money is required for ad hoc modifiers. If both catalog_object_id and base_price_money are set, base_price_money overrides the predefined CatalogModifier price.
    var BasePriceMoney: Money?
    /// - TotalPriceMoney: Read only The total price of the item modifier for its line item. This is the modifier's base_price_money multiplied by the line item's quantity.
    var TotalPriceMoney: Money?
    /// - Quantity: The quantity of the line item modifier. The modifier quantity can be 0 or more. For example, suppose a restaurant offers a cheeseburger on the menu. When a buyer orders this item, the restaurant records the purchase by creating an Order object with a line item for a burger. The line item includes a line item modifier: the name is cheese and the quantity is 1. The buyer has the option to order extra cheese (or no cheese). If the buyer chooses the extra cheese option, the modifier quantity increases to 2. If the buyer does not want any cheese, the modifier quantity is set to 0.
    var Quantity: String?
    
    enum CodingKeys: String, CodingKey {
        case UID = "uid"
        case SourceModifierUid = "source_modifier_uid"
        case CatalogObjectId = "catalog_object_id"
        case CatalogVersion = "catalog_version"
        case Name = "name"
        case BasePriceMoney = "base_price_money"
        case TotalPriceMoney = "total_price_money"
        case Quantity = "quantity"
    }
}
