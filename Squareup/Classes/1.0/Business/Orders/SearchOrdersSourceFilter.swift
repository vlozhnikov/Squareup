//
//  SearchOrdersSourceFilter.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

/// - SearchOrdersSourceFilter: A filter based on order source information.
/// https://developer.squareup.com/reference/square/objects/SearchOrdersSourceFilter
open class SearchOrdersSourceFilter: Codable {
    
    /// - SourceNames: Filters by the Source name. The filter returns any orders with a source.name that matches any of the listed source names.
    /// Max: 10 source names.
    public var SourceNames: [String]?
    
    enum CodingKeys: String, CodingKey {
        case SourceNames = "source_names"
    }
}
