//
//  CatalogItemModifierListInfo.swift
//  Business Calendar
//
//  Created by user on 1.05.23.
//

import Foundation

/// - CatalogItemModifierListInfo: Options to control the properties of a CatalogModifierList applied to a CatalogItem instance.
/// https://developer.squareup.com/reference/square/objects/CatalogItemModifierListInfo
open class CatalogItemModifierListInfo: Codable {
    
    /// - ModifierListId: The ID of the CatalogModifierList controlled by this CatalogModifierListInfo. Min Length 1.
    var ModifierListId: String?
    /// - ModifierOverrides: A set of CatalogModifierOverride objects that override whether a given CatalogModifier is enabled by default.
    var ModifierOverrides: [CatalogModifierOverride]?
    /// - MinSelectedModifiers: If 0 or larger, the smallest number of CatalogModifiers that must be selected from this CatalogModifierList.
    var MinSelectedModifiers: Int?
    /// - MaxSelectedModifiers: If 0 or larger, the largest number of CatalogModifiers that can be selected from this CatalogModifierList.
    var MaxSelectedModifiers: Int?
    /// - Enabled: If true, enable this CatalogModifierList. The default value is true.
    var Enabled: Bool?
    
    enum CodingKeys: String, CodingKey {
        case ModifierListId = "modifier_list_id"
        case ModifierOverrides = "modifier_overrides"
        case MinSelectedModifiers = "min_selected_modifiers"
        case MaxSelectedModifiers = "max_selected_modifiers"
        case Enabled = "enabled"
    }
}
