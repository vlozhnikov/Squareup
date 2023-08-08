//
//  SearchVendorsRequest.swift
//  Squareup
//
//  Created by user on 1.07.23.
//

import Foundation

internal class SearchVendorsRequest: Codable {
    
    /// - Filter: Specifies a filter used to search for vendors.
    var Filter: SearchVendorsRequestFilter?
    /// - Sort: Specifies a sorter used to sort the returned vendors.
    var Sort: SearchVendorsRequestSort?
    /// - Cursor: A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for the original query.
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Filter = "filter"
        case Sort = "sort"
        case Cursor = "cursor"
    }
}
