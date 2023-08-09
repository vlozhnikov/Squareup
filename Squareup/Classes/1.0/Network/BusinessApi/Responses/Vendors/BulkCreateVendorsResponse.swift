//
//  BulkCreateVendorsResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 1.07.23.
//

import Foundation

open class BulkCreateVendorsResponse: SquareupResponse {
    
    /// - Responses: A set of CreateVendorResponse objects encapsulating successfully created Vendor objects or error responses for failed attempts. The set is represented by a collection of idempotency-key/Vendor-object or idempotency-key/error-object pairs. The idempotency keys correspond to those specified in the input.
    public var Responses: [String: CreateVendorResponse]?
    
    enum CodingKeys: String, CodingKey {
        case Responses = "responses"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.Responses = try container.decodeIfPresent([String: CreateVendorResponse].self, forKey: .Responses)
    }
}
