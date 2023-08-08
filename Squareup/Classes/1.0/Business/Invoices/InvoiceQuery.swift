//
//  InvoiceQuery.swift
//  Squareup
//
//  Created by user on 17.06.23.
//

import Foundation

/// - InvoiceQuery: Describes query criteria for searching invoices.
/// https://developer.squareup.com/reference/square/objects/InvoiceQuery
open class InvoiceQuery: Codable {
    
    /// - Filter: Query filters to apply in searching invoices. For more information, see Search for invoices.
    var Filter: InvoiceFilter?
    /// - Sort: Describes the sort order for the search result.
    var Sort: InvoiceSort?
    
    enum CodingKeys: String, CodingKey {
        case Filter = "filter"
        case Sort = "sort"
    }
}
