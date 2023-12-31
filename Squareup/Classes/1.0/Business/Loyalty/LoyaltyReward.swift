//
//  LoyaltyReward.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

/// - LoyaltyReward: Represents a contract to redeem loyalty points for a reward tier discount.
/// Loyalty rewards can be in an ISSUED, REDEEMED, or DELETED state. For more information, see Manage loyalty rewards.
/// https://developer.squareup.com/reference/square/objects/LoyaltyReward
open class LoyaltyReward: Codable {
    
    /// - Id: Read only The Square-assigned ID of the loyalty account.
    /// Max Length 36
    public var Id: String?
    /// - Status: Read only The status of a loyalty reward.
    public var Status: LoyaltyRewardStatus?
    /// - LoyaltyAccountId: The Square-assigned ID of the loyalty account to which the reward belongs.
    /// Min Length 1
    /// Max Length 36
    public var LoyaltyAccountId: String?
    /// - RewardTierId: The Square-assigned ID of the reward tier used to create the reward.
    /// Min Length 1
    /// Max Length 36
    public var RewardTierId: String?
    /// - Points: Read only The number of loyalty points used for the reward.
    /// Min 1
    public var Points: Int?
    /// - OrderId: The Square-assigned ID of the order to which the reward is attached.
    public var OrderId: String?
    /// - CreatedAt: Read only The timestamp when the reward was created, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    @FormattedDate<RFC3339_Strategy> public var CreatedAt: Date?
    /// - UpdatedAt: Read only The timestamp when the reward was last updated, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    @FormattedDate<RFC3339_Strategy> public var UpdatedAt: Date?
    /// - RedeemedAt: Read only The timestamp when the reward was redeemed, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    @FormattedDate<RFC3339_Strategy> public var RedeemedAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case Status = "status"
        case LoyaltyAccountId = "loyalty_account_id"
        case RewardTierId = "reward_tier_id"
        case Points = "points"
        case OrderId = "order_id"
        case CreatedAt = "created_at"
        case UpdatedAt = "updated_at"
        case RedeemedAt = "redeemed_at"
    }
}
