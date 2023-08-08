//
//  UpdateVendorRequest.swift
//  Squareup
//
//  Created by user on 1.07.23.
//

import Foundation

internal class UpdateVendorRequest: Codable {
    
    /// - IdempotencyKey: A client-supplied, universally unique identifier (UUID) for the request.
    /// See Idempotency in the API Development 101 section for more information.
    /// Max Length 128
    var IdempotencyKey: String?
    /// - vendor: The specified Vendor to be updated.
    var vendor: Vendor?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case vendor = "vendor"
    }
}
