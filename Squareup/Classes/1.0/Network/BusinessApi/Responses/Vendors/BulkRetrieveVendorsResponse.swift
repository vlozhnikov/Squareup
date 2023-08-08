//
//  BulkRetrieveVendorsResponse.swift
//  Squareup
//
//  Created by user on 1.07.23.
//

import Foundation

open class BulkRetrieveVendorsResponse: SquareupResponse {
    
    /// - Responses: The set of RetrieveVendorResponse objects encapsulating successfully retrieved Vendor objects or error responses for failed attempts. The set is represented by a collection of Vendor-ID/Vendor-object or Vendor-ID/error-object pairs.
    var Responses: [String: RetrieveVendorResponse]?
    
    enum CodingKeys: String, CodingKey {
        case Responses = "responses"
    }
}
