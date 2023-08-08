//
//  CatalogModifierList.swift
//  Business Calendar
//
//  Created by user on 1.05.23.
//

import Foundation

/// - CatalogModifierList: A list of modifiers applicable to items at the time of sale.
/// For example, a "Condiments" modifier list applicable to a "Hot Dog" item may contain "Ketchup", "Mustard", and "Relish" modifiers. Use the selection_type field to specify whether or not multiple selections from the modifier list are allowed.
/// https://developer.squareup.com/reference/square/objects/CatalogModifierList
open class CatalogModifierList: Codable {
    
    /// - Name: The name for the CatalogModifierList instance. This is a searchable attribute for use in applicable query filters, and its value length is of Unicode code points. Max Length 255.
    var Name: String?
    /// - Ordinal: Determines where this modifier list appears in a list of CatalogModifierList values.
    var Ordinal: Int?
    /// - SelectionType: Indicates whether multiple options from the modifier list can be applied to a single CatalogItem.
    var SelectionType: CatalogModifierListSelectionType?
    /// - Modifiers: The options included in the CatalogModifierList. You must include at least one CatalogModifier. Each CatalogObject must have type MODIFIER and contain CatalogModifier data.
    var Modifiers = [CatalogObject]()
    /// - ImageIds: The IDs of images associated with this CatalogModifierList instance. Currently these images are not displayed by Square, but are free to be displayed in 3rd party applications.
    var ImageIds = [String]()
    
    enum CodingKeys: String, CodingKey {
        case Name = "name"
        case Ordinal = "ordinal"
        case SelectionType = "selection_type"
        case Modifiers = "modifiers"
        case ImageIds = "image_ids"
    }
}
