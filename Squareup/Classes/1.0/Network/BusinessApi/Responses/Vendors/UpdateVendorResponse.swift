//
//  UpdateVendorResponse.swift
//  Squareup
//
//  Created by user on 1.07.23.
//

import Foundation

/// - UpdateVendorResponse: Represents an output from a call to UpdateVendor.
/// https://developer.squareup.com/reference/square/objects/UpdateVendorResponse
open class UpdateVendorResponse: SquareupResponse {
    
    /// - vendor: The Vendor that has been updated.
    var vendor: Vendor?
    
    enum CodingKeys: String, CodingKey {
        case vendor = "vendor"
    }
}
