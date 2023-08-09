//
//  ShiftQuery.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.08.23.
//

import Foundation

/// - ShiftQuery: The parameters of a Shift search query, which includes filter and sort options.
/// https://developer.squareup.com/reference/square/objects/ShiftQuery
open class ShiftQuery: Codable {
    
    /// - Filter: Query filter options.
    public var Filter: ShiftFilter?
    /// - Sort: Sort order details.
    public var Sort: ShiftSort?
    
    enum CodingKeys: String, CodingKey {
        case Filter = "filter"
        case Sort = "sort"
    }
}
