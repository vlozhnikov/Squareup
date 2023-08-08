//
//  RetrieveInventoryPhysicalCountResponse.swift
//  Squareup
//
//  Created by user on 8.06.23.
//

import Foundation

open class RetrieveInventoryPhysicalCountResponse: SquareupResponse {
    
    /// - Count: The requested InventoryPhysicalCount.
    var Count: InventoryPhysicalCount?
    
    enum CodingKeys: String, CodingKey {
        case Count = "count"
    }
}
