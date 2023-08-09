//
//  RetrieveInventoryTransferResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 8.06.23.
//

import Foundation

open class RetrieveInventoryTransferResponse: SquareupResponse {
    
    /// - Transfer: The requested InventoryTransfer.
    public var Transfer: InventoryTransfer?
    
    enum CodingKeys: String, CodingKey {
        case Transfer = "transfer"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.Transfer = try container.decodeIfPresent(InventoryTransfer.self, forKey: .Transfer)
    }
}
