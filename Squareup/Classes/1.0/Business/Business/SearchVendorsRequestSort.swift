//
//  SearchVendorsRequestSort.swift
//  Squareup
//
//  Created by user on 1.07.23.
//

import Foundation

/// - SearchVendorsRequestSort: Defines a sorter used to sort results from SearchVendors.
/// https://developer.squareup.com/reference/square/objects/SearchVendorsRequestSort
open class SearchVendorsRequestSort: Codable {
    
    /// - Field: Specifies the sort key to sort the returned vendors.
    var Field: SearchVendorsRequestSortField?
    /// - Order: Specifies the sort order for the returned vendors.
    var Order: SortOrder?
    
    enum CodingKeys: String, CodingKey {
        case Field = "field"
        case Order = "order"
    }
}
