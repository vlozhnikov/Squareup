//
//  SearchShiftsRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.08.23.
//

import Foundation

open class SearchShiftsRequest: Codable {
    
    /// - query: Query filters.
    public var Query: ShiftQuery?
    /// - Limit: The number of resources in a page (200 by default).
    /// Min 1
    /// Max 200
    public var Limit: Int?
    /// - Cursor: An opaque cursor for fetching the next page.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Query = "query"
        case Limit = "limit"
        case Cursor = "cursor"
    }
}
