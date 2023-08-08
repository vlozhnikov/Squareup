//
//  LoyaltyEventFilter.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

/// - LoyaltyEventFilter: The filtering criteria.
/// If the request specifies multiple filters, the endpoint uses a logical AND to evaluate them.
/// https://developer.squareup.com/reference/square/objects/LoyaltyEventFilter
open class LoyaltyEventFilter: Codable {
    
    /// - LoyaltyAccountFilter: Filter events by loyalty account.
    var LoyaltyAccountFilter: LoyaltyEventLoyaltyAccountFilter?
    /// - TypeFilter: Filter events by event type.
    var TypeFilter: LoyaltyEventTypeFilter?
    /// - DateTimeFilter: Filter events by date time range. For each range, the start time is inclusive and the end time is exclusive.
    var DateTimeFilter: LoyaltyEventDateTimeFilter?
    /// - LocationFilter: Filter events by location.
    var LocationFilter: LoyaltyEventLocationFilter?
    /// - OrderFilter: Filter events by the order associated with the event.
    var OrderFilter: LoyaltyEventOrderFilter?
    
    enum CodingKeys: String, CodingKey {
        case LoyaltyAccountFilter = "loyalty_account_filter"
        case TypeFilter = "type_filter"
        case DateTimeFilter = "date_time_filter"
        case LocationFilter = "location_filter"
        case OrderFilter = "order_filter"
    }
}
