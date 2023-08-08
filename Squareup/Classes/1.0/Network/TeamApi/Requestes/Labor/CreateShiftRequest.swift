//
//  CreateShiftRequest.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

internal class CreateShiftRequest: Codable {
    
    /// - IdempotencyKey: A unique string value to ensure the idempotency of the operation.
    /// Max Length 128
    var IdempotencyKey: String?
    /// - shift: The Shift to be created.
    var shift: Shift?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case shift = "shift"
    }
}
