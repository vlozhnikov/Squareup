//
//  BatchRetrieveOrdersRequest.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

open class BatchRetrieveOrdersRequest: Codable {
    
    /// - LocationId: The ID of the location for these orders. This field is optional: omit it to retrieve orders within the scope of the current authorization's merchant ID.
    public var LocationId: String?
    /// - OrderIds: The IDs of the orders to retrieve. A maximum of 100 orders can be retrieved per request.
    public var OrderIds: [String]?
    
    enum CodingKeys: String, CodingKey {
        case LocationId = "location_id"
        case OrderIds = "order_ids"
    }
}
