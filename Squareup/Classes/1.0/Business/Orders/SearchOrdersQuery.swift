//
//  SearchOrdersQuery.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

/// - SearchOrdersQuery: Contains query criteria for the search.
/// https://developer.squareup.com/reference/square/objects/SearchOrdersQuery
open class SearchOrdersQuery: Codable {
    
    /// - Filter: Criteria to filter results by.
    var Filter: SearchOrdersFilter?
    /// - Sort: Criteria to sort results by.
    var Sort: SearchOrdersSort?
    
    enum CodingKeys: String, CodingKey {
        case Filter = "filter"
        case Sort = "sort"
    }
}
