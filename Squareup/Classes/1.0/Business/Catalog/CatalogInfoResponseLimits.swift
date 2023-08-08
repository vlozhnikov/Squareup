//
//  CatalogInfoResponseLimits.swift
//  
//
//  Created by user on 5.06.23.
//

import Foundation

/// - CatalogInfoResponseLimits:
/// https://developer.squareup.com/reference/square/objects/CatalogInfoResponseLimits
open class CatalogInfoResponseLimits: Codable {
    
    /// - BatchUpsertMaxObjectsPerBatch: The maximum number of objects that may appear within a single batch in a /v2/catalog/batch-upsert request.
    public var BatchUpsertMaxObjectsPerBatch: Int?
    /// - BatchUpsertMaxTotalObjects: The maximum number of objects that may appear across all batches in a /v2/catalog/batch-upsert request.
    public var BatchUpsertMaxTotalObjects: Int?
    /// - BatchRetrieveMaxObjectIds: The maximum number of object IDs that may appear in a /v2/catalog/batch-retrieve request.
    public var BatchRetrieveMaxObjectIds: Int?
    /// - SearchMaxPageLimit: The maximum number of results that may be returned in a page of a /v2/catalog/search response.
    public var SearchMaxPageLimit: Int?
    /// - BatchDeleteMaxObjectIds: The maximum number of object IDs that may be included in a single /v2/catalog/batch-delete request.
    public var BatchDeleteMaxObjectIds: Int?
    /// - UpdateItemTaxesMaxItemIds: The maximum number of item IDs that may be included in a single /v2/catalog/update-item-taxes request.
    public var UpdateItemTaxesMaxItemIds: Int?
    /// - UpdateItemTaxesMaxTaxesToEnable: The maximum number of tax IDs to be enabled that may be included in a single /v2/catalog/update-item-taxes request.
    public var UpdateItemTaxesMaxTaxesToEnable: Int?
    /// - UpdateItemTaxesMaxTaxesToDisable: The maximum number of tax IDs to be disabled that may be included in a single /v2/catalog/update-item-taxes request.
    public var UpdateItemTaxesMaxTaxesToDisable: Int?
    /// - UpdateItemModifierListsMaxItemIds: The maximum number of item IDs that may be included in a single /v2/catalog/update-item-modifier-lists request.
    public var UpdateItemModifierListsMaxItemIds: Int?
    /// - UpdateItemModifierListsMaxModifierListsToEnable: The maximum number of modifier list IDs to be enabled that may be included in a single /v2/catalog/update-item-modifier-lists request.
    public var UpdateItemModifierListsMaxModifierListsToEnable: Int?
    /// - UpdateItemModifierListsMaxModifierListsToDisable: The maximum number of modifier list IDs to be disabled that may be included in a single /v2/catalog/update-item-modifier-lists request.
    public var UpdateItemModifierListsMaxModifierListsToDisable: Int?
    
    enum CodingKeys: String, CodingKey {
        case BatchUpsertMaxObjectsPerBatch = "batch_upsert_max_objects_per_batch"
        case BatchUpsertMaxTotalObjects = "batch_upsert_max_total_objects"
        case BatchRetrieveMaxObjectIds = "batch_retrieve_max_object_ids"
        case SearchMaxPageLimit = "search_max_page_limit"
        case BatchDeleteMaxObjectIds = "batch_delete_max_object_ids"
        case UpdateItemTaxesMaxItemIds = "update_item_taxes_max_item_ids"
        case UpdateItemTaxesMaxTaxesToEnable = "update_item_taxes_max_taxes_to_enable"
        case UpdateItemTaxesMaxTaxesToDisable = "update_item_taxes_max_taxes_to_disable"
        case UpdateItemModifierListsMaxItemIds = "update_item_modifier_lists_max_item_ids"
        case UpdateItemModifierListsMaxModifierListsToEnable = "update_item_modifier_lists_max_modifier_lists_to_enable"
        case UpdateItemModifierListsMaxModifierListsToDisable = "update_item_modifier_lists_max_modifier_lists_to_disable"
    }
}
