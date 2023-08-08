//
//  SearchOrdersFulfillmentFilter.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

/// - SearchOrdersFulfillmentFilter: Filter based on order fulfillment information.
/// https://developer.squareup.com/reference/square/objects/SearchOrdersFulfillmentFilter
open class SearchOrdersFulfillmentFilter: Codable {
    
    /// - FulfillmentTypes: A list of fulfillment types to filter for. The list returns orders if any of its fulfillments match any of the fulfillment types listed in this field.
    public var FulfillmentTypes: [FulfillmentType]?
    /// - FulfillmentStates: A list of fulfillment states to filter for. The list returns orders if any of its fulfillments match any of the fulfillment states listed in this field.
    public var FulfillmentStates: [FulfillmentState]?
    
    enum CodingKeys: String, CodingKey {
        case FulfillmentTypes = "fulfillment_types"
        case FulfillmentStates = "fulfillment_states"
    }
}
