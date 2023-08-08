//
//  BatchRetrieveOrdersResponse.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

open class BatchRetrieveOrdersResponse: SquareupResponse {
    
    /// - Orders: The requested orders. This will omit any requested orders that do not exist.
    public var Orders: [Order]?
    
    enum CodingKeys: String, CodingKey {
        case Orders = "orders"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.Orders = try container.decodeIfPresent([Order].self, forKey: .Orders)
    }
}
