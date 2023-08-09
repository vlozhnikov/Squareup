//
//  OrderEntry.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 11.06.23.
//

import Foundation

/// - OrderEntry: A lightweight description of an order that is returned when returned_entries is true on a SearchOrdersRequest.
/// https://developer.squareup.com/reference/square/objects/OrderEntry
open class OrderEntry: Codable {
    
    /// - OrderId: The ID of the order.
    public var OrderId: String?
    /// - Version: Read only The version number, which is incremented each time an update is committed to the order. Orders that were not created through the API do not include a version number and therefore cannot be updated.
    public var Version: Int?
    /// - LocationId: The location ID the order belongs to.
    public var LocationId: String?
    
    enum CodingKeys: String, CodingKey {
        case OrderId = "order_id"
        case Version = "version"
        case LocationId = "location_id"
    }
}
