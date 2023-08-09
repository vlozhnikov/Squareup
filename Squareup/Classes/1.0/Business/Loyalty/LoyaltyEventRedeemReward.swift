//
//  LoyaltyEventRedeemReward.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

/// - LoyaltyEventRedeemReward: Provides metadata when the event type is REDEEM_REWARD.
/// https://developer.squareup.com/reference/square/objects/LoyaltyEventRedeemReward
open class LoyaltyEventRedeemReward: Codable {
    
    /// - LoyaltyProgramId: Read only The ID of the loyalty program.
    /// Min Length  1
    /// Max Length 36
    public var LoyaltyProgramId: String?
    /// - RewardId: Read only The Square-assigned ID of the created loyalty reward. This field is returned only if the event source is LOYALTY_API.
    /// Max Length 36
    public var RewardId: String?
    /// - OrderId: Read only The ID of the order that redeemed the reward. This field is returned only if the Orders API is used to process orders.
    public var OrderId: String?
    
    enum CodingKeys: String, CodingKey {
        case LoyaltyProgramId = "loyalty_program_id"
        case RewardId = "reward_id"
        case OrderId = "order_id"
    }
}
