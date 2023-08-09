//
//  LoyaltyAccountExpiringPointDeadline.swift
//  Squareup
//
//  Created by user on 26.06.23.
//

import Foundation

/// - LoyaltyAccountExpiringPointDeadline: Represents a set of points for a loyalty account that are scheduled to expire on a specific date.
/// https://developer.squareup.com/reference/square/objects/LoyaltyAccountExpiringPointDeadline
open class LoyaltyAccountExpiringPointDeadline: Codable {
    
    /// - Points: The number of points scheduled to expire at the expires_at timestamp.
    public var Points: Int?
    /// - ExpiresAt: The timestamp of when the points are scheduled to expire, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    /// Min Length 1
    @FormattedDate<RFC3339_Strategy> public var ExpiresAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case Points = "points"
        case ExpiresAt = "expires_at"
    }
}
