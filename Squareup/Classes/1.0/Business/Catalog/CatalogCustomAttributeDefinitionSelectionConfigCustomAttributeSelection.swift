//
//  CatalogCustomAttributeDefinitionSelectionConfigCustomAttributeSelection.swift
//  Business Calendar
//
//  Created by user on 1.05.23.
//

import Foundation

/// - CatalogCustomAttributeDefinitionSelectionConfigCustomAttributeSelection: A named selection for this SELECTION-type custom attribute definition.
/// https://developer.squareup.com/reference/square/objects/CatalogCustomAttributeDefinitionSelectionConfigCustomAttributeSelection
open class CatalogCustomAttributeDefinitionSelectionConfigCustomAttributeSelection: Codable {
    
    /// - UID: Unique ID set by Square.
    public var UID: String?
    /// - Name: Required
    /// Selection name, unique within allowed_selections.
    ///  Min Length 1
    ///  Max Length 255
    public var Name: String?
    
    enum CodingKeys: String, CodingKey {
        case UID = "uid"
        case Name = "name"
    }
}
