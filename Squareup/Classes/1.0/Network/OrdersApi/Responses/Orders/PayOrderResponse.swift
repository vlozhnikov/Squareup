//
//  PayOrderResponse.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

open class PayOrderResponse: SquareupResponse {
    
    /// - order: The paid, updated order.
    var order: Order?
    
    enum CodingKeys: String, CodingKey {
        case order = "order"
    }
}
