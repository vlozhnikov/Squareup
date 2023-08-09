//
//  ListCashDrawerShiftsRequest.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

open class ListCashDrawerShiftsRequest: Codable {
    
    /// - LocationId: The ID of the location to query for a list of cash drawer shifts.
    public var LocationId: String?
    /// - sortOrder: The order in which cash drawer shifts are listed in the response, based on their opened_at field. Default value: ASC
    public var sortOrder: SortOrder?
    @FormattedDate<RFC3339_Strategy> public var BeginTime: Date?
    /// - EndTime: The exclusive end date of the query on opened_at, in ISO 8601 format.
    @FormattedDate<RFC3339_Strategy> public var EndTime: Date?
    /// - Limit: Number of cash drawer shift events in a page of results (200 by default, 1000 max).
    public var Limit: Int?
    /// - Cursor: Opaque cursor for fetching the next page of results.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case LocationId = "location_id"
        case sortOrder = "sort_order"
        case BeginTime = "begin_time"
        case EndTime = "end_time"
        case Limit = "limit"
        case Cursor = "cursor"
    }
}
