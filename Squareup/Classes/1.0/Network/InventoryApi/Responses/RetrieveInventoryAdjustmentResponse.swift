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
}
