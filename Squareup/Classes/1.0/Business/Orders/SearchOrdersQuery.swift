//
//  SearchOrdersQuery.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 11.06.23.
//

import Foundation

/// - SearchOrdersQuery: Contains query criteria for the search.
/// https://developer.squareup.com/reference/square/objects/SearchOrdersQuery
open class SearchOrdersQuery: Codable {
    
    /// - Filter: Criteria to filter results by.
    public var Filter: SearchOrdersFilter?
    /// - Sort: Criteria to sort results by.
    public var Sort: SearchOrdersSort?
    
    enum CodingKeys: String, CodingKey {
        case Filter = "filter"
        case Sort = "sort"
    }
}
