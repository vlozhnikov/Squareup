//
//  CreateCustomerGroupRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 5.05.23.
//

import Foundation

open class CreateCustomerGroupRequest: Codable {
    
    public var IdempotencyKey: String?
    public var Group: CustomerGroup?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case Group = "group"
    }
}
