//
//  CatalogModifier.swift
//  Business Calendar
//
//  Created by user on 1.05.23.
//

import Foundation

/// - CatalogModifier: A modifier applicable to items at the time of sale.
/// An example of a modifier is a Cheese add-on to a Burger item.
/// https://developer.squareup.com/reference/square/objects/CatalogModifier
open class CatalogModifier: Codable {
    
    /// - Name: The modifier name. This is a searchable attribute for use in applicable query filters, and its value length is of Unicode code points. Max Length 255.
    public var Name: String?
    /// - PriceMoney: The modifier price.
    public var PriceMoney: Money?
    /// - Ordinal: Determines where this CatalogModifier appears in the CatalogModifierList.
    public var Ordinal: Int?
    /// - ModifierListId: The ID of the CatalogModifierList associated with this modifier.
    public var ModifierListId: String?
    /// - ImageId: The ID of the image associated with this CatalogModifier instance. Currently this image is not displayed by Square, but is free to be displayed in 3rd party applications.
    public var ImageId: String?
    
    enum CodingKeys: String, CodingKey {
        case Name = "name"
        case PriceMoney = "price_money"
        case Ordinal = "ordinal"
        case ModifierListId = "modifier_list_id"
        case ImageId = "image_id"
    }
}
