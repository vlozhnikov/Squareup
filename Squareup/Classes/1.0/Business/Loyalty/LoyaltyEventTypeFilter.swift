//
//  LoyaltyEventTypeFilter.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

/// - LoyaltyEventTypeFilter: Filter events by event type.
/// https://developer.squareup.com/reference/square/objects/LoyaltyEventTypeFilter
open class LoyaltyEventTypeFilter: Codable {
    
    /// - Types: The loyalty event types used to filter the result. If multiple values are specified, the endpoint uses a logical OR to combine them.
    public var Types: LoyaltyEventType?
    
    enum CodingKeys: String, CodingKey {
        case Types = "types"
    }
}
