//
//  BulkCreateVendorsResponse.swift
//  Squareup
//
//  Created by user on 1.07.23.
//

import Foundation

open class BulkCreateVendorsResponse: SquareupResponse {
    
    /// - Responses: A set of CreateVendorResponse objects encapsulating successfully created Vendor objects or error responses for failed attempts. The set is represented by a collection of idempotency-key/Vendor-object or idempotency-key/error-object pairs. The idempotency keys correspond to those specified in the input.
    var Responses: [String: CreateVendorResponse]?
    
    enum CodingKeys: String, CodingKey {
        case Responses = "responses"
    }
}
