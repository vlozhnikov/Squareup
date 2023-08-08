//
//  LoyaltyProgramExpirationPolicy.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

/// - LoyaltyProgramExpirationPolicy: Describes when the loyalty program expires.
/// https://developer.squareup.com/reference/square/objects/LoyaltyProgramExpirationPolicy
open class LoyaltyProgramExpirationPolicy: Codable {
    
    /// - ExpirationDuration: The number of months before points expire, in P[n]M RFC 3339 duration format. For example, a value of P12M represents a duration of 12 months. Points are valid through the last day of the month in which they are scheduled to expire. For example, with a P12M duration, points earned on July 6, 2020 expire on August 1, 2021.
    /// Example for 2 days, 12 hours, 30 minutes, and 15 seconds: P2DT12H30M15S
    /// Min Length 1
    var ExpirationDuration: String?
    
    enum CodingKeys: String, CodingKey {
        case ExpirationDuration = "expiration_duration"
    }
}
