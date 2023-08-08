//
//  LoyaltyReward.swift
//  Squareup
//
//  Created by user on 27.06.23.
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
//    var CreatedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var CreatedAt: Date?
    /// - UpdatedAt: Read only The timestamp when the reward was last updated, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var UpdatedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var UpdatedAt: Date?
    /// - RedeemedAt: Read only The timestamp when the reward was redeemed, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var RedeemedAt: Date?
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
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
//        self.Status = try container.decodeIfPresent(LoyaltyRewardStatus.self, forKey: .Status)
//        self.LoyaltyAccountId = try container.decodeIfPresent(String.self, forKey: .LoyaltyAccountId)
//        self.Points = try container.decodeIfPresent(Int.self, forKey: .Points)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CreatedAt), !dateString.isEmpty {
//            self.CreatedAt = try dateString.decode_RFC3339_Date(container, forKey: .CreatedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .UpdatedAt), !dateString.isEmpty {
//            self.UpdatedAt = try dateString.decode_RFC3339_Date(container, forKey: .UpdatedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .RedeemedAt), !dateString.isEmpty {
//            self.RedeemedAt = try dateString.decode_RFC3339_Date(container, forKey: .RedeemedAt)
//        }
//    }
}
