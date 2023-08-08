//
//  CreateVendorRequest.swift
//  Squareup
//
//  Created by user on 1.07.23.
//

import Foundation

internal class CreateVendorRequest: Codable {
    
    /// - IdempotencyKey: A client-supplied, universally unique identifier (UUID) to make this CreateVendor call idempotent.
    /// See Idempotency in the API Development 101 section for more information.
    /// Min Length 1
    /// Max Length 128
    var IdempotencyKey: String?
    /// - vendor: The requested Vendor to be created.
    var vendor: Vendor?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case vendor = "vendor"
    }
}
