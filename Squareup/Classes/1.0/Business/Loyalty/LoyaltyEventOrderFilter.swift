//
//  LoyaltyEventOrderFilter.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

/// - LoyaltyEventOrderFilter: Filter events by the order associated with the event.
/// https://developer.squareup.com/reference/square/objects/LoyaltyEventOrderFilter
open class LoyaltyEventOrderFilter: Codable {
    
    /// - OrderId: The ID of the order associated with the event.
    /// Min Length 1
    public var OrderId: String?
    
    enum CodingKeys: String, CodingKey {
        case OrderId = "order_id"
    }
}
