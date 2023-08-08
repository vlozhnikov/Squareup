//
//  UpdateOrderRequest.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

open class UpdateOrderRequest: Codable {
    
    /// - order: The sparse order containing only the fields to update and the version to which the update is being applied.
    public var order: Order?
    /// - FieldsToClear: The dot notation paths fields to clear. For example, line_items[uid].note. For more information, see Deleting fields.
    public var FieldsToClear: [String]?
    /// - IdempotencyKey: A value you specify that uniquely identifies this update request.
    /// If you are unsure whether a particular update was applied to an order successfully, you can reattempt it with the same idempotency key without worrying about creating duplicate updates to the order. The latest order version is returned.
    /// For more information, see Idempotency.
    /// Max Length 192
    public var IdempotencyKey: String?
    
    enum CodingKeys: String, CodingKey {
        case order = "order"
        case FieldsToClear = "fields_to_clear"
        case IdempotencyKey = "idempotency_key"
    }
}
