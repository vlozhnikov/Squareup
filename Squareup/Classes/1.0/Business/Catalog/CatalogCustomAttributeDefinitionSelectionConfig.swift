//
//  CatalogCustomAttributeDefinitionSelectionConfig.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 1.05.23.
//

import Foundation

/// - CatalogCustomAttributeDefinitionSelectionConfig:  Configuration associated with SELECTION-type custom attribute definitions.
/// https://developer.squareup.com/reference/square/objects/CatalogCustomAttributeDefinitionSelectionConfig
open class CatalogCustomAttributeDefinitionSelectionConfig: Codable {
    
    /// - MaxAllowedSelections: The maximum number of selections that can be set. The maximum value for this attribute is 100. The default value is 1. The value can be modified, but changing the value will not affect existing custom attribute values on objects. Clients need to handle custom attributes with more selected values than allowed by this limit.
    ///
    /// Max 100
    public var MaxAllowedSelections: Int?
    /// - AllowedSelections: The set of valid CatalogCustomAttributeSelections. Up to a maximum of 100 selections can be defined. Can be modified.
    public var AllowedSelections: [CatalogCustomAttributeDefinitionSelectionConfigCustomAttributeSelection]?
    
    enum CodingKeys: String, CodingKey {
        case MaxAllowedSelections = "max_allowed_selections"
        case AllowedSelections = "allowed_selections"
    }
}
