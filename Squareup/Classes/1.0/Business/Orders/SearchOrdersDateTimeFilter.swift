//
//  SearchOrdersDateTimeFilter.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 11.06.23.
//

import Foundation

/// - SearchOrdersDateTimeFilter: Filter for Order objects based on whether their CREATED_AT, CLOSED_AT, or UPDATED_AT timestamps fall within a specified time range.
///
/// You can specify the time range and which timestamp to filter for. You can filter for only one time range at a time.
///
/// For each time range, the start time and end time are inclusive. If the end time is absent, it defaults to the time of the first request for the cursor.
///
/// Important: If you use the DateTimeFilter in a SearchOrders query, you must set the sort_field in OrdersSort to the same field you filter for. For example, if you set the CLOSED_AT field in DateTimeFilter, you must set the sort_field in SearchOrdersSort to CLOSED_AT. Otherwise, SearchOrders throws an error. Learn more about filtering orders by time range.
/// https://developer.squareup.com/reference/square/objects/SearchOrdersDateTimeFilter
open class SearchOrdersDateTimeFilter: Codable {
    
    /// - CreatedAt: The time range for filtering on the created_at timestamp. If you use this value, you must set the sort_field in the OrdersSearchSort object to CREATED_AT.
    public var CreatedAt: TimeRange?
    /// - UpdatedAt: The time range for filtering on the updated_at timestamp. If you use this value, you must set the sort_field in the OrdersSearchSort object to UPDATED_AT.
    public var UpdatedAt: TimeRange?
    /// - ClosedAt: The time range for filtering on the closed_at timestamp. If you use this value, you must set the sort_field in the OrdersSearchSort object to CLOSED_AT.
    public var ClosedAt: TimeRange?
    
    enum CodingKeys: String, CodingKey {
        case CreatedAt = "created_at"
        case UpdatedAt = "updated_at"
        case ClosedAt = "closed_at"
    }
}
