//
//  SearchVendorsRequestFilter.swift
//  Squareup
//
//  Created by user on 1.07.23.
//

import Foundation

/// - SearchVendorsRequestFilter: Defines supported query expressions to search for vendors by.
/// https://developer.squareup.com/reference/square/objects/SearchVendorsRequestFilter
open class SearchVendorsRequestFilter: Codable {
    
    /// - Name: The names of the Vendor objects to retrieve.
    var Name: [String]?
    /// - Status: The statuses of the Vendor objects to retrieve.
    var Status: [VendorStatus]?
    
    enum CodingKeys: String, CodingKey {
        case Name = "name"
        case Status = "status"
    }
}
