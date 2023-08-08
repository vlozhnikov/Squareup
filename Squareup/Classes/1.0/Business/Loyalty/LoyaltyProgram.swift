//
//  LoyaltyProgram.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

/// - LoyaltyProgram: Represents a Square loyalty program.
/// Loyalty programs define how buyers can earn points and redeem points for rewards. Square sellers can have only one loyalty program, which is created and managed from the Seller Dashboard. For more information, see Loyalty Program Overview.
/// https://developer.squareup.com/reference/square/objects/LoyaltyProgram
open class LoyaltyProgram: Codable {
    
    /// - Id: Read only The Square-assigned ID of the loyalty program. Updates to the loyalty program do not modify the identifier.
    /// Max Length 36
    public var Id: String?
    /// - Status: Whether the program is currently active.
    public var Status: LoyaltyProgramStatus?
    /// RewardTiers: The list of rewards for buyers, sorted by ascending points.
    public var RewardTiers: [LoyaltyProgramRewardTier]?
    /// - ExpirationPolicy: f present, details for how points expire.
    public var ExpirationPolicy: LoyaltyProgramExpirationPolicy?
    /// - Terminology: A cosmetic name for the “points” currency.
    public var Terminology: LoyaltyProgramTerminology?
    /// - LocationIds: The locations at which the program is active.
    public var LocationIds: [String]?
    /// - CreatedAt: Read only The timestamp when the program was created, in RFC 3339 format.
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
    /// - AccrualRules: Defines how buyers can earn loyalty points from the base loyalty program. To check for associated loyalty promotions that enable buyers to earn extra points, call ListLoyaltyPromotions.
    public var AccrualRules: [LoyaltyProgramAccrualRule]?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case Status = "status"
        case RewardTiers = "reward_tiers"
        case ExpirationPolicy = "expiration_policy"
        case Terminology = "terminology"
        case LocationIds = "location_ids"
        case CreatedAt = "created_at"
        case UpdatedAt = "updated_at"
        case AccrualRules = "accrual_rules"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
//        self.Status = try container.decodeIfPresent(LoyaltyProgramStatus.self, forKey: .Status)
//        self.RewardTiers = try container.decodeIfPresent([LoyaltyProgramRewardTier].self, forKey: .RewardTiers)
//        self.ExpirationPolicy = try container.decodeIfPresent(LoyaltyProgramExpirationPolicy.self, forKey: .ExpirationPolicy)
//        self.Terminology = try container.decodeIfPresent(LoyaltyProgramTerminology.self, forKey: .Terminology)
//        self.LocationIds = try container.decodeIfPresent([String].self, forKey: .LocationIds)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CreatedAt), !dateString.isEmpty {
//            self.CreatedAt = try dateString.decode_RFC3339_Date(container, forKey: .CreatedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .UpdatedAt), !dateString.isEmpty {
//            self.UpdatedAt = try dateString.decode_RFC3339_Date(container, forKey: .UpdatedAt)
//        }
//        self.AccrualRules = try container.decodeIfPresent([LoyaltyProgramAccrualRule].self, forKey: .AccrualRules)
//    }
}
