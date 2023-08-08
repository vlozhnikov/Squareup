//
//  CloneOrderResponse.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

open class CloneOrderResponse: SquareupResponse {
    
    /// - order: The cloned order.
    public var order: Order?
    
    enum CodingKeys: String, CodingKey {
        case order = "order"
    }
}
