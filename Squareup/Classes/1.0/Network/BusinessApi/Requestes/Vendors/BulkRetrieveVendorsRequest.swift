//
//  BulkRetrieveVendorsRequest.swift
//  Squareup
//
//  Created by user on 1.07.23.
//

import Foundation

internal class BulkRetrieveVendorsRequest: Codable {
    
    /// - VendorIds: IDs of the Vendor objects to retrieve.
    var VendorIds: [String]?
    
    enum CodingKeys: String, CodingKey {
        case VendorIds = "vendor_ids"
    }
}
