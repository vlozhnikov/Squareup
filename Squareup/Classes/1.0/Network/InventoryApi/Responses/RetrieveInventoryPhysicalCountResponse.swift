//
//  RetrieveInventoryPhysicalCountResponse.swift
//  Squareup
//
//  Created by user on 8.06.23.
//

import Foundation

open class RetrieveInventoryPhysicalCountResponse: SquareupResponse {
    
    /// - Count: The requested InventoryPhysicalCount.
    public var Count: InventoryPhysicalCount?
    
    enum CodingKeys: String, CodingKey {
        case Count = "count"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.Count = try container.decodeIfPresent(InventoryPhysicalCount.self, forKey: .Count)
    }
}
