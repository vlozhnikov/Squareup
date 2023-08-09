//
//  LoyaltyEventLocationFilter.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

/// - LoyaltyEventLocationFilter: Filter events by location.
/// https://developer.squareup.com/reference/square/objects/LoyaltyEventLocationFilter
open class LoyaltyEventLocationFilter: Codable {
    
    /// - LocationIds: The location IDs for loyalty events to query. If multiple values are specified, the endpoint uses a logical OR to combine them.
    public var LocationIds: [String]?
    
    enum CodingKeys: String, CodingKey {
        case LocationIds = "location_ids"
    }
}
