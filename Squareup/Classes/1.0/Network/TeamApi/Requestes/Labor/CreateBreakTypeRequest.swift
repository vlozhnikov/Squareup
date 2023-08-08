//
//  CreateBreakTypeRequest.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

open class CreateBreakTypeRequest: Codable {
    
    /// - IdempotencyKey: A unique string value to ensure the idempotency of the operation.
    /// Max Length 128
    public var IdempotencyKey: String?
    /// - breakType: The BreakType to be created.
    public var breakType: BreakType?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case breakType = "break_type"
    }
}
