//
//  ListCustomerSegmentsRequest.swift
//  Squareup
//
//  Created by user on 2.08.23.
//

import Foundation

internal class ListCustomerSegmentsRequest: Codable {
    
    /// - Cursor: A pagination cursor returned by previous calls to ListCustomerSegments. This cursor is used to retrieve the next set of query results.
    var Cursor: String?
    /// - Limit: The maximum number of results to return in a single page. This limit is advisory. The response might contain more or fewer results. If the specified limit is less than 1 or greater than 50, Square returns a 400 VALUE_TOO_LOW or 400 VALUE_TOO_HIGH error. The default value is 50.: The customer group to create.
    var Limit: Int?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case Limit = "limit"
    }
}
