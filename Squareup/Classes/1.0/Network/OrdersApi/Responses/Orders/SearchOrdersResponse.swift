//
//  SearchOrdersResponse.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

open class SearchOrdersResponse: SquareupResponse {
    
    /// - OrderEntries: A list of OrderEntries that fit the query conditions. The list is populated only if return_entries is set to true in the request.
    public var OrderEntries: [OrderEntry]?
    /// - Orders: A list of Order objects that match the query conditions. The list is populated only if return_entries is set to false in the request.
    public var Orders: [Order]?
    /// - Cursor: The pagination cursor to be used in a subsequent request. If unset, this is the final response. For more information, see Pagination.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case OrderEntries = "order_entries"
        case Orders = "orders"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.OrderEntries = try container.decodeIfPresent([OrderEntry].self, forKey: .OrderEntries)
        self.Orders = try container.decodeIfPresent([Order].self, forKey: .Orders)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
