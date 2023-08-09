//
//  RetrieveVendorResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 1.07.23.
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
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.vendor = try container.decodeIfPresent(Vendor.self, forKey: .vendor)
    }
}
