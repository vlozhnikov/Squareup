//
//  BatchRetrieveInventoryCountsResponse.swift
//  Squareup
//
//  Created by user on 7.06.23.
//

import Foundation

open class BatchRetrieveInventoryCountsResponse: SquareupResponse {
    
    /// - Counts: he current calculated inventory counts for the requested objects and locations.
    public var Counts: [InventoryCount]?
    /// - Cursor:   The pagination cursor to be used in a subsequent request. If unset, this is the final response.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Counts = "counts"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Counts = try container.decodeIfPresent([InventoryCount].self, forKey: .Counts)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
