//
//  LoyaltyEventLoyaltyAccountFilter.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

/// - LoyaltyEventLoyaltyAccountFilter: Filter events by loyalty account.
/// https://developer.squareup.com/reference/square/objects/LoyaltyEventLoyaltyAccountFilter
open class LoyaltyEventLoyaltyAccountFilter: Codable {
    
    /// - LoyaltyAccountid: The ID of the loyalty account associated with loyalty events.
    /// Min Length 1
    public var LoyaltyAccountid: String?
    
    enum CodingKeys: String, CodingKey {
        case LoyaltyAccountid = "loyalty_account_id"
    }
}
