//
//  CreateCustomerGroupRequest.swift
//  Business Calendar
//
//  Created by user on 5.05.23.
//

import Foundation

internal class CreateCustomerGroupRequest: Codable {
    var IdempotencyKey: String?
    var Group: CustomerGroup?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case Group = "group"
    }
}
