//
//  SearchSubscriptionsFilter.swift
//  Squareup
//
//  Created by user on 23.06.23.
//

import Foundation

/// - SearchSubscriptionsFilter: Represents a set of query expressions (filters) to narrow the scope of targeted subscriptions returned by the SearchSubscriptions endpoint.
/// https://developer.squareup.com/reference/square/objects/SearchSubscriptionsFilter
open class SearchSubscriptionsFilter: Codable {
    
    /// - CustomerIds: A filter to select subscriptions based on the subscribing customer IDs.
    public var CustomerIds: [String]?
    /// - LocationIds: A filter to select subscriptions based on the location.
    public var LocationIds: [String]?
    /// - SourceNames: A filter to select subscriptions based on the source application.
    public var SourceNames: [String]?
    
    enum CodingKeys: String, CodingKey {
        case CustomerIds = "customer_ids"
        case LocationIds = "location_ids"
        case SourceNames = "source_names"
    }
}
