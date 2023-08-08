//
//  SearchCustomerRequest.swift
//  Squareup
//
//  Created by user on 8.06.23.
//

import Foundation

internal class SearchCustomersRequest: Codable {
    
    /// - Cursor: Include the pagination cursor in subsequent calls to this endpoint to retrieve the next set of results associated with the original query.
    var Cursor: String?
    /// - Limit: The maximum number of results to return in a single page. This limit is advisory. The response might contain more or fewer results. If the specified limit is invalid, Square returns a 400 VALUE_TOO_LOW or 400 VALUE_TOO_HIGH error. The default value is 100.
    /// For more information, see Pagination.
    /// Min 1
    /// Max 100
    var Limit: Int?
    /// - Query: The filtering and sorting criteria for the search request. If a query is not specified, Square returns all customer profiles ordered alphabetically by given_name and family_name.
    var Query: CustomerQuery?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case Limit = "limit"
        case Query = "query"
    }
}
