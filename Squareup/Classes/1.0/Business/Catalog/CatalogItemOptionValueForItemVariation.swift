//
//  CatalogItemOptionValueForItemVariation.swift
//  Business Calendar
//
//  Created by user on 1.05.23.
//

import Foundation

/// - CatalogItemOptionValueForItemVariation: A CatalogItemOptionValue links an item variation to an item option as an item option value.
/// For example, a t-shirt item may offer a color option and a size option. An item option value would represent each variation of t-shirt: For example, "Color:Red, Size:Small" or "Color:Blue, Size:Medium".
/// https://developer.squareup.com/reference/square/objects/CatalogItemOptionValueForItemVariation
open class CatalogItemOptionValueForItemVariation: Codable {
    
    /// - ItemOptionId: The unique id of an item option.
    var ItemOptionId: String?
    /// - ItemOptionValueId: The unique id of the selected value for the item option.
    var ItemOptionValueId: String?
    
    enum CodingKeys: String, CodingKey {
        case ItemOptionId = "item_option_id"
        case ItemOptionValueId = "ItemOptionValueId"
    }
}
