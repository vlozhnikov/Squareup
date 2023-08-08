//
//  CatalogQueryExact.swift
//  Business Calendar
//
//  Created by user on 3.05.23.
//

import Foundation

/// - CatalogQueryExact: The query filter to return the search result by exact match of the specified attribute name and value.
/// https://developer.squareup.com/reference/square/objects/CatalogQueryExact
open class CatalogQueryExact: Codable {
    
    /// - AttributeName: Required
    /// The name of the attribute to be searched. Matching of the attribute name is exact.
    /// Min Length 1
    var AttributeName: String?
    /// - AttributeValue: Required
    /// The desired value of the search attribute. Matching of the attribute value is case insensitive and can be partial. For example, if a specified value of "sma", objects with the named attribute value of "Small", "small" are both matched.
    var AttributeValue: String?
    
    enum CodingKeys: String, CodingKey {
        case AttributeName = "attribute_name"
        case AttributeValue = "attribute_value"
    }
}
