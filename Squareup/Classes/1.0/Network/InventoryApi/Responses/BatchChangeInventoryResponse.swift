//
//  BatchChangeInventoryResponse.swift
//  Squareup
//
//  Created by user on 7.06.23.
//

import Foundation

open class BatchChangeInventoryResponse: SquareupResponse {
    
    /// - Counts: The current counts for all objects referenced in the request.
    public var Counts: [InventoryCount]?
    /// - Changes: Changes created for the request.
    public var Changes: [InventoryChange]?
    
    enum CodingKeys: String, CodingKey {
        case Counts = "counts"
        case Changes = "changes"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Counts = try container.decodeIfPresent([InventoryCount].self, forKey: .Counts)
        self.Changes = try container.decodeIfPresent([InventoryChange].self, forKey: .Changes)
    }
}
