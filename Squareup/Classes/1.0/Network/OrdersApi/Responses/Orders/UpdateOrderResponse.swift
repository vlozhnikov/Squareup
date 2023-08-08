//
//  UpdateOrderResponse.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

open class UpdateOrderResponse: SquareupResponse {
    
    /// - order: The updated order.
    public var order: Order?
    
    enum CodingKeys: String, CodingKey {
        case order = "order"
    }
}
