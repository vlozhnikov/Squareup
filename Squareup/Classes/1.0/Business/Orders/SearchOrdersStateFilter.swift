//
//  SearchOrdersStateFilter.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

/// - SearchOrdersStateFilter: Filter by the current order state.
/// https://developer.squareup.com/reference/square/objects/SearchOrdersStateFilter
open class SearchOrdersStateFilter: Codable {
    
    /// - States: OrderState
    public var States: [OrderState]?
    
    enum CodingKeys: String, CodingKey {
        case States = "states"
    }
}
