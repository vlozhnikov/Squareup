//
//  SearchOrdersRequest.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

internal class SearchOrdersRequest: Codable {
    
    /// - LocationIds: The location IDs for the orders to query. All locations must belong to the same merchant.
    /// Min: 1 location ID.
    /// Max: 10 location IDs.
    var LocationIds: [String]?
    /// - Cursor: A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for your original query. For more information, see Pagination.
    var Cursor: String?
    /// - Query: Query conditions used to filter or sort the results. Note that when retrieving additional pages using a cursor, you must use the original query.
    var Query: SearchOrdersQuery?
    /// - Limit: The maximum number of results to be returned in a single page. It is possible to receive fewer results than the specified limit on a given page.
    /// Default: 500
    /// Min 1
    var Limit: Int?
    /// - ReturnEntries: A Boolean that controls the format of the search results. If true, SearchOrders returns OrderEntry objects. If false, SearchOrders returns complete order objects.
    /// Default: false.
    var ReturnEntries: Bool?
    
    enum CodingKeys: String, CodingKey {
        case LocationIds = "location_ids"
        case Cursor = "cursor"
        case Query = "query"
        case Limit = "limit"
        case ReturnEntries = "return_entries"
    }
}
