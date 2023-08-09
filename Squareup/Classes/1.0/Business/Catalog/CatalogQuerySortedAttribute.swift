//
//  CatalogQuerySortedAttribute.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.05.23.
//

import Foundation

/// - CatalogQuerySortedAttribute: The query expression to specify the key to sort search results.
/// https://developer.squareup.com/reference/square/objects/CatalogQuerySortedAttribute
open class CatalogQuerySortedAttribute: Codable {
    
    /// - AttributeName: Required
    /// The attribute whose value is used as the sort key.
    /// Min Length 1
    public var AttributeName: String?
    /// - InitialAttributeValue:  The first attribute value to be returned by the query. Ascending sorts will return only objects with this value or greater, while descending sorts will return only objects with this value or less. If unset, start at the beginning (for ascending sorts) or end (for descending sorts).
    public var InitialAttributeValue: String?
    /// - SortOrder: The desired sort order, "ASC" (ascending) or "DESC" (descending).
    public var sortOrder: SortOrder?
    
    enum CodingKeys: String, CodingKey {
        case AttributeName = "attribute_name"
        case InitialAttributeValue = "initial_attribute_value"
        case sortOrder = "sort_order"
    }
}
