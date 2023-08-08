//
//  RetrieveVendorResponse.swift
//  Squareup
//
//  Created by user on 1.07.23.
//

import Foundation

/// - RetrieveVendorResponse: Represents an output from a call to RetrieveVendor.
/// https://developer.squareup.com/reference/square/objects/RetrieveVendorResponse
open class RetrieveVendorResponse: SquareupResponse {
    
    /// - vendor: The successfully retrieved Vendor object.
    public var vendor: Vendor?
    
    enum CodingKeys: String, CodingKey {
        case vendor = "vendor"
    }
}
