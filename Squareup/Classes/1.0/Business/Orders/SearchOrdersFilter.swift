//
//  SearchOrdersFilter.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

/// - SearchOrdersFilter: Filtering criteria to use for a SearchOrders request.
/// Multiple filters are ANDed together.
/// https://developer.squareup.com/reference/square/objects/SearchOrdersFilter
open class SearchOrdersFilter: Codable {
    
    /// - StateFilter: Filter by OrderState.
    public var StateFilter: SearchOrdersStateFilter?
    /// - DateTimeFilter: Filter for results within a time range.
    /// Important: If you filter for orders by time range, you must set SearchOrdersSort to sort by the same field. Learn more about filtering orders by time range.
    public var DateTimeFilter: SearchOrdersDateTimeFilter?
    /// - FulfillmentFilter:
    public var FulfillmentFilter: SearchOrdersFulfillmentFilter?
    /// - SourceFilter: Filter by the source of the order.
    public var SourceFilter: SearchOrdersSourceFilter?
    /// - CustomerFilter: Filter by customers associated with the order.
    public var CustomerFilter: SearchOrdersCustomerFilter?
    
    enum CodingKeys: String, CodingKey {
        case StateFilter = "state_filter"
        case DateTimeFilter = "date_time_filter"
        case FulfillmentFilter = "fulfillment_filter"
        case SourceFilter = "source_filter"
        case CustomerFilter = "customer_filter"
    }
}
