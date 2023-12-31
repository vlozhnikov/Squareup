//
//  SearchSubscriptionsQuery.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 23.06.23.
//

import Foundation

/// - SearchSubscriptionsQuery: Represents a query, consisting of specified query expressions, used to search for subscriptions.
/// https://developer.squareup.com/reference/square/objects/SearchSubscriptionsQuery
open class SearchSubscriptionsQuery: Codable {
    
    /// - Filter: A list of query expressions.
    public var Filter: SearchSubscriptionsFilter?
    
    enum CodingKeys: String, CodingKey {
        case Filter = "filter"
    }
}
