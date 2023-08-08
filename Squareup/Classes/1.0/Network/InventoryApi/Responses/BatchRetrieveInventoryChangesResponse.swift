//
//  BatchRetrieveInventoryChangesResponse.swift
//  Squareup
//
//  Created by user on 7.06.23.
//

import Foundation

open class BatchRetrieveInventoryChangesResponse: SquareupResponse {
    
    /// - Changes: The current calculated inventory changes for the requested objects and locations.
    public var Changes: [InventoryChange]?
    /// - Cursor:   The pagination cursor to be used in a subsequent request. If unset, this is the final response. See the Pagination guide for more information.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Changes = "changes"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Changes = try container.decodeIfPresent([InventoryChange].self, forKey: .Changes)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
