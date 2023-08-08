//
//  BatchRetrieveOrdersResponse.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

open class BatchRetrieveOrdersResponse: SquareupResponse {
    
    /// - Orders: The requested orders. This will omit any requested orders that do not exist.
    var Orders: [Order]?
    
    enum CodingKeys: String, CodingKey {
        case Orders = "orders"
    }
}
