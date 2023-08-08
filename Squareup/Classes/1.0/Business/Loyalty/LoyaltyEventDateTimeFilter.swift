//
//  LoyaltyEventDateTimeFilter.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

/// - LoyaltyEventDateTimeFilter:
/// https://developer.squareup.com/reference/square/objects/LoyaltyEventDateTimeFilter
open class LoyaltyEventDateTimeFilter: Codable {
    
    /// - CreatedAt: The created_at date time range used to filter the result.
    var CreatedAt: TimeRange?
    
    enum CodingKeys: String, CodingKey {
        case CreatedAt = "created_at"
    }
}
