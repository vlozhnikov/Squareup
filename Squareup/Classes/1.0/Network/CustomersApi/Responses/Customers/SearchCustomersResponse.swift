//
//  SearchCustomersResponse.swift
//  Squareup
//
//  Created by user on 8.06.23.
//

import Foundation

open class SearchCustomersResponse: SquareupResponse {
    
    /// - Customers: The customer profiles that match the search query. If any search condition is not met, the result is an empty object ({}).
    var Customers: [Customer]?
    /// - Cursor: A pagination cursor that can be used during subsequent calls to SearchCustomers to retrieve the next set of results associated with the original query. Pagination cursors are only present when a request succeeds and additional results are available.
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Customers = "customers"
        case Cursor = "cursor"
    }
}
