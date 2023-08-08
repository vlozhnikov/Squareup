//
//  CreateShiftRequest.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

open class CreateShiftRequest: Codable {
    
    /// - IdempotencyKey: A unique string value to ensure the idempotency of the operation.
    /// Max Length 128
    public var IdempotencyKey: String?
    /// - shift: The Shift to be created.
    public var shift: Shift?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case shift = "shift"
    }
}
