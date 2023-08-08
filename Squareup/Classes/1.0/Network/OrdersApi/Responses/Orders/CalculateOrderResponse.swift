//
//  CalculateOrderResponse.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

open class CalculateOrderResponse: SquareupResponse {
    
    /// - order: The calculated version of the order provided in the request.
    public var order: Order?
    
    enum CodingKeys: String, CodingKey {
        case order = "order"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.order = try container.decodeIfPresent(Order.self, forKey: .order)
    }
}
