//
//  SearchOrdersResponse.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

open class SearchOrdersResponse: SquareupResponse {
    
    /// - OrderEntries: A list of OrderEntries that fit the query conditions. The list is populated only if return_entries is set to true in the request.
    var OrderEntries: [OrderEntry]?
    /// - Orders: A list of Order objects that match the query conditions. The list is populated only if return_entries is set to false in the request.
    var Orders: [Order]?
    /// - Cursor: The pagination cursor to be used in a subsequent request. If unset, this is the final response. For more information, see Pagination.
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case OrderEntries = "order_entries"
        case Orders = "orders"
        case Cursor = "cursor"
    }
}
