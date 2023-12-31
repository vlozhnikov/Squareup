//
//  CreateCustomerGroupRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 5.05.23.
//

import Foundation

open class CreateCustomerGroupRequest: Codable {
    
    /// - IdempotencyKey: The idempotency key for the request. For more information, see Idempotency.
    public var IdempotencyKey: String?
    /// - Group: The customer group to create.
    public var Group: CustomerGroup?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case Group = "group"
    }
}
