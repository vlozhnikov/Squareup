//
//  BulkRetrieveVendorsRequest.swift
//  Squareup
//
//  Created by user on 1.07.23.
//

import Foundation

open class BulkRetrieveVendorsRequest: Codable {
    
    /// - VendorIds: IDs of the Vendor objects to retrieve.
    public var VendorIds: [String]?
    
    enum CodingKeys: String, CodingKey {
        case VendorIds = "vendor_ids"
    }
}
