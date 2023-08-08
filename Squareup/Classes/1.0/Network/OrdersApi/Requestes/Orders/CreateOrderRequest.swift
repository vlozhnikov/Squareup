//
//  CreateOrderRequest.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

internal class CreateOrderRequest: Codable {
    
    /// - order: The order to create. If this field is set, the only other top-level field that can be set is the idempotency_key.
    var order: Order
    /// - IdempotencyKey: A value you specify that uniquely identifies this order among orders you have created.
    /// If you are unsure whether a particular order was created successfully, you can try it again with the same idempotency key without worrying about creating duplicate orders.
    ///
    /// For more information, see Idempotency.
    /// Max Length 192
    var IdempotencyKey: String?
    
    enum CodingKeys: String, CodingKey {
        case order = "order"
        case IdempotencyKey = "idempotency_key"
    }
}
