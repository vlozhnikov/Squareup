//
//  CatalogQueryItemVariationsForItemOptionValues.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.05.23.
//

import Foundation

/// - CatalogQueryItemVariationsForItemOptionValues: The query filter to return the item variations containing the specified item option value IDs.
/// https://developer.squareup.com/reference/square/objects/CatalogQueryItemVariationsForItemOptionValues
open class CatalogQueryItemVariationsForItemOptionValues: Codable {
    
    /// - ItemOptionValueIds: A set of CatalogItemOptionValue IDs to be used to find associated CatalogItemVariations. All ItemVariations that contain all of the given Item Option Values (in any order) will be returned.
    public var ItemOptionValueIds: [String]?
    
    enum CodingKeys: String, CodingKey {
        case ItemOptionValueIds = "item_option_value_ids"
    }
}
