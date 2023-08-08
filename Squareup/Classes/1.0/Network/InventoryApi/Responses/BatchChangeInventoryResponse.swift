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
}
