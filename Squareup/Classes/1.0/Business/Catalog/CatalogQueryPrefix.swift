//
//  CatalogQueryPrefix.swift
//  Business Calendar
//
//  Created by user on 3.05.23.
//

import Foundation

/// - CatalogQueryPrefix: The query filter to return the search result whose named attribute values are prefixed by the specified attribute value.
/// https://developer.squareup.com/reference/square/objects/CatalogQueryPrefix
open class CatalogQueryPrefix: Codable {
    
    /// - AttributeName: Required
    /// The name of the attribute to be searched.
    /// Min Length 1
    var AttributeName: String?
    /// - AttributePrefix: Required
    /// The desired prefix of the search attribute value.
    /// Min Length 1
    var AttributePrefix: String?
    
    enum CodingKeys: String, CodingKey {
        case AttributeName = "attribute_name"
        case AttributePrefix = "attribute_prefix"
    }
}
