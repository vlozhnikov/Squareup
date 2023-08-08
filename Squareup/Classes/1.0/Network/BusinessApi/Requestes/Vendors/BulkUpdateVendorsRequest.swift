//
//  BulkUpdateVendorsRequest.swift
//  Squareup
//
//  Created by user on 1.07.23.
//

import Foundation

open class BulkUpdateVendorsRequest: Codable {
    
    /// - Vendors: A set of UpdateVendorRequest objects encapsulating to-be-updated Vendor objects. The set is represented by a collection of Vendor-ID/UpdateVendorRequest-object pairs.
    public var Vendors: [String: UpdateVendorRequest]?
    
    enum CodingKeys: String, CodingKey {
        case Vendors = "vendors"
    }
}
