//
//  CreateBreakTypeRequest.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

internal class CreateBreakTypeRequest: Codable {
    
    /// - IdempotencyKey: A unique string value to ensure the idempotency of the operation.
    /// Max Length 128
    var IdempotencyKey: String?
    /// - breakType: The BreakType to be created.
    var breakType: BreakType?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case breakType = "break_type"
    }
}
