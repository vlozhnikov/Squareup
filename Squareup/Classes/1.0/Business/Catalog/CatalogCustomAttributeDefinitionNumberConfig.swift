//
//  CatalogCustomAttributeDefinitionNumberConfig.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 1.05.23.
//

import Foundation

/// - CatalogCustomAttributeDefinitionNumberConfig:
/// https://developer.squareup.com/reference/square/objects/CatalogCustomAttributeDefinitionNumberConfig
open class CatalogCustomAttributeDefinitionNumberConfig: Codable {
    
    /// - Precision: An integer between 0 and 5 that represents the maximum number of positions allowed after the decimal in number custom attribute values For example:
    ///
    /// if the precision is 0, the quantity can be 1, 2, 3, etc.
    /// if the precision is 1, the quantity can be 0.1, 0.2, etc.
    /// if the precision is 2, the quantity can be 0.01, 0.12, etc.
    ///
    /// Default: 5
    /// Max 5
    public var Precision: Int?
    
    enum CodingKeys: String, CodingKey {
        case Precision = "precision"
    }
}
