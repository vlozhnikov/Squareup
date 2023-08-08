//
//  CreateOrderResponse.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

open class CreateOrderResponse: SquareupResponse {
    
    /// - order: The newly created order.
    var order: Order?
    
    enum CodingKeys: String, CodingKey {
        case order = "order"
    }
}
