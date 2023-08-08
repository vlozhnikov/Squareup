//
//  SearchOrdersCustomerFilter.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

/// - SearchOrdersCustomerFilter: A filter based on the order customer_id and any tender customer_id associated with the order.
/// It does not filter based on the FulfillmentRecipient customer_id.
/// https://developer.squareup.com/reference/square/objects/SearchOrdersCustomerFilter
open class SearchOrdersCustomerFilter: Codable {
    
    /// - CustomerIds: A list of customer IDs to filter by.
    /// Max: 10 customer IDs.
    var CustomerIds: [String]?
    
    enum CodingKeys: String, CodingKey {
        case CustomerIds = "customer_ids"
    }
}
