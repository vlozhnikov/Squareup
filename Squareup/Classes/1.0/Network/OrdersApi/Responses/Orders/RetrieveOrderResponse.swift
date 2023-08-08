//
//  RetrieveOrderResponse.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

open class RetrieveOrderResponse: SquareupResponse {
    
    /// - order: The requested order.
    var order: Order?
    
    enum CodingKeys: String, CodingKey {
        case order = "order"
    }
}
