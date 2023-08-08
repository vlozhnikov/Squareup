//
//  SearchShiftsRequest.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

internal class SearchShiftsRequest: Codable {
    
    /// - query: Query filters.
    var Query: ShiftQuery?
    /// - Limit: The number of resources in a page (200 by default).
    /// Min 1
    /// Max 200
    var Limit: Int?
    /// - Cursor: An opaque cursor for fetching the next page.
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Query = "query"
        case Limit = "limit"
        case Cursor = "cursor"
    }
}
