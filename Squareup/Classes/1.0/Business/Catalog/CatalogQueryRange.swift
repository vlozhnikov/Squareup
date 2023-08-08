//
//  CatalogQueryRange.swift
//  Business Calendar
//
//  Created by user on 3.05.23.
//

import Foundation

/// - CatalogQueryRange: The query filter to return the search result whose named attribute values fall between the specified range.
/// https://developer.squareup.com/reference/square/objects/CatalogQueryRange
open class CatalogQueryRange: Codable {
    
    /// - AttributeName: Required
    /// The name of the attribute to be searched.
    /// Min Length 1
    public var AttributeName: String?
    /// - AttributeMinValue: The desired minimum value for the search attribute (inclusive).
    public var AttributeMinValue: Int?
    /// - AttributeMaxValue: The desired maximum value for the search attribute (inclusive).
    public var AttributeMaxValue: Int?
    
    enum CodingKeys: String, CodingKey {
        case AttributeName = "attribute_name"
        case AttributeMinValue = "attribute_min_value"
        case AttributeMaxValue = "attribute_max_value"
    }
}
