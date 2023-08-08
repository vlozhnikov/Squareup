//
//  RetrieveInventoryAdjustmentResponse.swift
//  Squareup
//
//  Created by user on 7.06.23.
//

import Foundation

open class RetrieveInventoryAdjustmentResponse: SquareupResponse {
    
    /// - Adjustment: The requested InventoryAdjustment.
    public var Adjustment: InventoryAdjustment?
    
    enum CodingKeys: String, CodingKey {
        case Adjustment = "adjustment"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.Adjustment = try container.decodeIfPresent(InventoryAdjustment.self, forKey: .Adjustment)
    }
}
