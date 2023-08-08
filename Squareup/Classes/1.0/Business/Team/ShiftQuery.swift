//
//  ShiftQuery.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

/// - ShiftQuery: The parameters of a Shift search query, which includes filter and sort options.
/// https://developer.squareup.com/reference/square/objects/ShiftQuery
open class ShiftQuery: Codable {
    
    /// - Filter: Query filter options.
    var Filter: ShiftFilter?
    /// - Sort: Sort order details.
    var Sort: ShiftSort?
    
    enum CodingKeys: String, CodingKey {
        case Filter = "filter"
        case Sort = "sort"
    }
}