//
//  CatalogQueryItemsForModifierList.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.05.23.
//

import Foundation

/// - CatalogQueryItemsForModifierList: The query filter to return the items containing the specified modifier list IDs.
/// https://developer.squareup.com/reference/square/objects/CatalogQueryItemsForModifierList
open class CatalogQueryItemsForModifierList: Codable {
    
    /// - ModifierListIds: Required
    /// A set of CatalogModifierList IDs to be used to find associated CatalogItems.
    public var ModifierListIds: [String]?
    
    enum CodingKeys: String, CodingKey {
        case ModifierListIds = "modifier_list_ids"
    }
}
