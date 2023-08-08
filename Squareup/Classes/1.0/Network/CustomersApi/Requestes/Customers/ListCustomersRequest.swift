//
//  ListCustomersRequest.swift
//  Squareup
//
//  Created by user on 8.06.23.
//

import Foundation

open class ListCustomersRequest: Codable {
    
    /// - Cursor: A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for your original query.
    public var Cursor: String?
    /// - Limit: The maximum number of results to return in a single page. This limit is advisory. The response might contain more or fewer results. If the specified limit is less than 1 or greater than 100, Square returns a 400 VALUE_TOO_LOW or 400 VALUE_TOO_HIGH error. The default value is 100.
    public var Limit: Int?
    /// - SortField: Indicates how customers should be sorted.
    /// The default value is DEFAULT.
    public var SortField: CustomerSortField?
    /// - sortOrder: Indicates whether customers should be sorted in ascending (ASC) or descending (DESC) order.
    /// The default value is ASC.
    public var sortOrder: SortOrder?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case Limit = "limit"
        case SortField = "sort_field"
        case sortOrder = "sort_order"
    }
}
