//
//  CatalogModifierOverride.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 1.05.23.
//

import Foundation

/// - CatalogModifierOverride: Options to control how to override the default behavior of the specified modifier.
/// https://developer.squareup.com/reference/square/objects/CatalogModifierOverride
open class CatalogModifierOverride: Codable {
    
    /// - ModifierId: The ID of the CatalogModifier whose default behavior is being overridden. Min Length 1.
    public var ModifierId: String?
    /// - OnByDefault: If true, this CatalogModifier should be selected by default for this CatalogItem.
    public var OnByDefault: Bool?
    
    enum CodingKeys: String, CodingKey {
        case ModifierId = "modifier_id"
        case OnByDefault = "on_by_default"
    }
}
