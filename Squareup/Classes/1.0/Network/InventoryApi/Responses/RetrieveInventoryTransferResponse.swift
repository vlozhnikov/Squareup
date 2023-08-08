//
//  RetrieveInventoryTransferResponse.swift
//  Squareup
//
//  Created by user on 8.06.23.
//

import Foundation

open class RetrieveInventoryTransferResponse: SquareupResponse {
    
    /// - Transfer: The requested InventoryTransfer.
    var Transfer: InventoryTransfer?
    
    enum CodingKeys: String, CodingKey {
        case Transfer = "transfer"
    }
}
