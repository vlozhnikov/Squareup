//
//  CreateVendorResponse.swift
//  Squareup
//
//  Created by user on 1.07.23.
//

import Foundation

/// - CreateVendorResponse: Represents an output from a call to CreateVendor.
/// https://developer.squareup.com/reference/square/objects/CreateVendorResponse
open class CreateVendorResponse: SquareupResponse {
    
    /// - vendor: The successfully created Vendor object.
    public var vendor: Vendor?
    
    enum CodingKeys: String, CodingKey {
        case vendor = "vendor"
    }
}
