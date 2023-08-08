//
//  CloneOrderRequest.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

open class CloneOrderRequest: Codable {
    
    /// - OrderId: The ID of the order to clone.
    public var OrderId: String?
    /// - Version: An optional order version for concurrency protection.
    /// If a version is provided, it must match the latest stored version of the order to clone. If a version is not provided, the API clones the latest version.
    public var Version: Int?
    /// - IdempotencyKey: A value you specify that uniquely identifies this clone request.
    /// If you are unsure whether a particular order was cloned successfully, you can reattempt the call with the same idempotency key without worrying about creating duplicate cloned orders. The originally cloned order is returned.
    public var IdempotencyKey: String?
    
    enum CodingKeys: String, CodingKey {
        case OrderId = "order_id"
        case Version = "version"
        case IdempotencyKey = "idempotency_key"
    }
}
