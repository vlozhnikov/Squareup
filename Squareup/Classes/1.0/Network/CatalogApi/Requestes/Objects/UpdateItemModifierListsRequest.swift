//
//  UpdateItemModifierListsRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.05.23.
//

import Foundation

open class UpdateItemModifierListsRequest: Codable {
    
    /// - ItemIds: The IDs of the catalog items associated with the CatalogModifierList objects being updated.
    public var ItemIds = [String]()
    /// - ModifierListsToDisable: The IDs of the CatalogModifierList objects to enable for the CatalogItem. At least one of modifier_lists_to_enable or modifier_lists_to_disable must be specified.
    public var ModifierListsToDisable = [String]()
    /// - ModifierListsToEnable: The IDs of the CatalogModifierList objects to disable for the CatalogItem. At least one of modifier_lists_to_enable or modifier_lists_to_disable must be specified.
    public var ModifierListsToEnable = [String]()
    
    enum CodingKeys: String, CodingKey {
        case ItemIds = "item_ids"
        case ModifierListsToDisable = "modifier_lists_to_disable"
        case ModifierListsToEnable = "modifier_lists_to_enable"
    }
}
