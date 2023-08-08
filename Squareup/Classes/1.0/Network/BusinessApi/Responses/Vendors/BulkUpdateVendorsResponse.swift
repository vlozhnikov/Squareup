//
//  BulkUpdateVendorsResponse.swift
//  Squareup
//
//  Created by user on 1.07.23.
//

import Foundation

open class BulkUpdateVendorsResponse: SquareupResponse {
    
    /// - Responses: A set of UpdateVendorResponse objects encapsulating successfully created Vendor objects or error responses for failed attempts. The set is represented by a collection of Vendor-ID/UpdateVendorResponse-object or Vendor-ID/error-object pairs.
    public var Responses: [String: UpdateVendorResponse]?
    
    enum CodingKeys: String, CodingKey {
        case Responses = "responses"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.Responses = try container.decodeIfPresent([String: UpdateVendorResponse].self, forKey: .Responses)
    }
}
