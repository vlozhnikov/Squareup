//
//  BulkCreateVendorsRequest.swift
//  Squareup
//
//  Created by user on 1.07.23.
//

import Foundation

open class BulkCreateVendorsRequest: Codable {
    
    /// - Vendors: Specifies a set of new Vendor objects as represented by a collection of idempotency-key/Vendor-object pairs.
    public var Vendors: [String: Vendor]?
    
    enum CodingKeys: String, CodingKey {
        case Vendors = "vendors"
    }
}
