//
//  ShiftSort.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

/// - ShiftSort: Sets the sort order of search results.
/// https://developer.squareup.com/reference/square/objects/ShiftSort
open class ShiftSort: Codable {
    
    /// - Field: The field to sort on.
    public var Field: ShiftSortField?
    /// - Order: The order in which results are returned. Defaults to DESC.
    public var Order: SortOrder?
    
    enum CodingKeys: String, CodingKey {
        case Field = "field"
        case Order = "order"
    }
}
