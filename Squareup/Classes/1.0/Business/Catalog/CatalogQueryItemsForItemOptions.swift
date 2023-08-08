//
//  CatalogQueryItemsForItemOptions.swift
//  Business Calendar
//
//  Created by user on 3.05.23.
//

import Foundation

/// - CatalogQueryItemsForItemOptions: The query filter to return the items containing the specified item option IDs.
/// https://developer.squareup.com/reference/square/objects/CatalogQueryItemsForItemOptions
open class CatalogQueryItemsForItemOptions: Codable {
    
    /// - ItemOptionIds: A set of CatalogItemOption IDs to be used to find associated CatalogItems. All Items that contain all of the given Item Options (in any order) will be returned.
    public var ItemOptionIds: [String]?
    
    enum CodingKeys: String, CodingKey {
        case ItemOptionIds = "item_option_ids"
    }
}
