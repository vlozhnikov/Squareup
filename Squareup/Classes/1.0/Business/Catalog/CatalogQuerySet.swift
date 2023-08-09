//
//  CatalogQuerySet.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.05.23.
//

import Foundation

/// - CatalogQuerySet: The query filter to return the search result(s) by exact match of the specified attribute_name and any of the attribute_values.
/// https://developer.squareup.com/reference/square/objects/CatalogQuerySet
open class CatalogQuerySet: Codable {
    
    /// - AttributeName: Required
    /// The name of the attribute to be searched. Matching of the attribute name is exact.
    /// Min Length 1
    public var AttributeName: String?
    /// - AttributeValues: Required
    /// The desired values of the search attribute. Matching of the attribute values is exact and case insensitive. A maximum of 250 values may be searched in a request.
    public var AttributeValues: [String]?
    
    enum CodingKeys: String, CodingKey {
        case AttributeName = "attribute_name"
        case AttributeValues = "attribute_values"
    }
}
