//
//  LoyaltyEventOther.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

/// - LoyaltyEventOther: Provides metadata when the event type is OTHER.
/// https://developer.squareup.com/reference/square/objects/LoyaltyEventOther
open class LoyaltyEventOther: Codable {
    
    /// - LoyaltyProgramId: Read only The ID of the loyalty program.
    /// Min Length  1
    /// Max Length 36
    public var LoyaltyProgramId: String?
    /// - Points: Read only The loyalty points used to create the reward.
    public var Points: Int?
    
    enum CodingKeys: String, CodingKey {
        case LoyaltyProgramId = "loyalty_program_id"
        case Points = "points"
    }
}
