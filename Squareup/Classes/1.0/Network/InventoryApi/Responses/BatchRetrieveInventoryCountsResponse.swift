//
//  BatchRetrieveInventoryCountsResponse.swift
//  Squareup
//
//  Created by user on 7.06.23.
//

import Foundation

open class BatchRetrieveInventoryCountsResponse: SquareupResponse {
    
    /// - Counts: he current calculated inventory counts for the requested objects and locations.
    var Counts: [InventoryCount]?
    /// - Cursor:   The pagination cursor to be used in a subsequent request. If unset, this is the final response.
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Counts = "counts"
        case Cursor = "cursor"
    }
}
