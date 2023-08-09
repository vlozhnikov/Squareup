//
//  CustomerSort.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 8.06.23.
//

import Foundation

/// - CustomerSort: Represents the sorting criteria in a search query that defines how to sort customer profiles returned in SearchCustomers results.
/// https://developer.squareup.com/reference/square/objects/CustomerSort
open class CustomerSort: Codable {
    
    /// - Field: Indicates the fields to use as the sort key, which is either the default set of fields or created_at.
    /// The default value is DEFAULT.
    public var Field: CustomerSortField?
    /// - Order: Indicates the order in which results should be sorted based on the sort field value. Strings use standard alphabetic comparison to determine order. Strings representing numbers are sorted as strings.
    /// The default value is ASC
    public var Order: SortOrder?
    
    enum CodingKeys: String, CodingKey {
        case Field = "field"
        case Order = "order"
    }
}
