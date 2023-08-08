//
//  CatalogItemOptionForItem.swift
//  Business Calendar
//
//  Created by user on 1.05.23.
//

import Foundation

/// - CatalogItemOptionForItem: An option that can be assigned to an item.
/// For example, a t-shirt item may offer a color option or a size option.
/// https://developer.squareup.com/reference/square/objects/CatalogItemOptionForItem
open class CatalogItemOptionForItem: Codable {
    
    /// - ItemOptionId: The unique id of the item option, used to form the dimensions of the item option matrix in a specified order.
    public var ItemOptionId: String?
    
    enum CodingKeys: String, CodingKey {
        case ItemOptionId = "item_option_id"
    }
}
