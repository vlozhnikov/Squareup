//
//  InvoiceSort.swift
//  Squareup
//
//  Created by user on 17.06.23.
//

import Foundation

/// - InvoiceSort: Identifies the sort field and sort order.
/// https://developer.squareup.com/reference/square/objects/InvoiceSort
open class InvoiceSort: Codable {
    
    /// - Field: The field to use for sorting.
    public var Field: InvoiceSortField?
    /// - Order: The order to use for sorting the results.
    public var Order: SortOrder?
    
    enum CodingKeys: String, CodingKey {
        case Field = "field"
        case Order = "order"
    }
}
