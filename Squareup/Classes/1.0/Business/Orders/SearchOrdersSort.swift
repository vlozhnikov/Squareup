//
//  SearchOrdersSort.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 11.06.23.
//

import Foundation

/// - SearchOrdersSort: Sorting criteria for a SearchOrders request.
/// Results can only be sorted by a timestamp field.
open class SearchOrdersSort: Codable {
    
    /// - SortField: The field to sort by.
    /// Important: When using a DateTimeFilter, sort_field must match the timestamp field that the DateTimeFilter uses to filter. For example, if you set your sort_field to CLOSED_AT and you use a DateTimeFilter, your DateTimeFilter must filter for orders by their CLOSED_AT date. If this field does not match the timestamp field in DateTimeFilter, SearchOrders returns an error.
    /// Default: CREATED_AT.
    public var SortField: SearchOrdersSortField?
    /// - sortOrder: The chronological order in which results are returned. Defaults to DESC
    public var sortOrder: SortOrder?
    
    enum CodingKeys: String, CodingKey {
        case SortField = "sort_field"
        case sortOrder = "sort_order"
    }
}
