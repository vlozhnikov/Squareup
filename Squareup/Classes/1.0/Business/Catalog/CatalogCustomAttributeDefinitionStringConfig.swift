//
//  CatalogCustomAttributeDefinitionStringConfig.swift
//  Business Calendar
//
//  Created by user on 1.05.23.
//

import Foundation

/// - CatalogCustomAttributeDefinitionStringConfig: Configuration associated with Custom Attribute Definitions of type STRING.
/// https://developer.squareup.com/reference/square/objects/CatalogCustomAttributeDefinitionStringConfig
open class CatalogCustomAttributeDefinitionStringConfig: Codable {
    
    /// - EnforceUniqueness: If true, each Custom Attribute instance associated with this Custom Attribute Definition must have a unique value within the seller's catalog. For example, this may be used for a value like a SKU that should not be duplicated within a seller's catalog. May not be modified after the definition has been created.
    public var EnforceUniqueness: Bool?
    
    enum CodingKeys: String, CodingKey {
        case EnforceUniqueness = "enforce_uniqueness"
    }
}
