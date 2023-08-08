//
//  CatalogItemOptionValue.swift
//  Business Calendar
//
//  Created by user on 1.05.23.
//

import Foundation

/// - CatalogItemOptionValue: An enumerated value that can link a CatalogItemVariation to an item option as one of its item option values.
/// https://developer.squareup.com/reference/square/objects/CatalogItemOptionValue
open class CatalogItemOptionValue: Codable {
    
    /// - ItemOptionId: Unique ID of the associated item option.
    var ItemOptionId: String?
    /// - Name: Name of this item option value. This is a searchable attribute for use in applicable query filters.
    var Name: String?
    /// - Description: A human-readable description for the option value. This is a searchable attribute for use in applicable query filters.
    var Description: String?
    /// - Color: The HTML-supported hex color for the item option (e.g., "#ff8d4e85"). Only displayed if show_colors is enabled on the parent ItemOption. When left unset, color defaults to white ("#ffffff") when show_colors is enabled on the parent ItemOption.
    var Color: Bool?
    /// - Ordinal: Determines where this option value appears in a list of option values.
    var Ordinal: Int?
    
    enum CodingKeys: String, CodingKey {
        case ItemOptionId = "item_option_id"
        case Name = "name"
        case Description = "description"
        case Color = "color"
        case Ordinal = "ordinal"
    }
}
