//
//  LoyaltyPromotion.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

/// - LoyaltyPromotion: Represents a promotion for a loyalty program.
/// Loyalty promotions enable buyers to earn extra points on top of those earned from the base program.
/// A loyalty program can have a maximum of 10 loyalty promotions with an ACTIVE or SCHEDULED status.
/// https://developer.squareup.com/reference/square/objects/LoyaltyPromotion
open class LoyaltyPromotion: Codable {
    
    /// - Id: Read only The Square-assigned ID of the loyalty account.
    /// Max Length 36
    var Id: String?
    /// - Name: The name of the promotion.
    /// Min Length  1
    /// Max Length 50
    var Name: String?
    /// - Incentive: The points incentive for the promotion. This field defines whether promotion points are earned by multiplying base program points or by adding a specified number of points.
    var Incentive: LoyaltyPromotionIncentive?
    /// - AvailableTime: The scheduling information that defines when purchases can qualify to earn points from an ACTIVE promotion.
    var AvailableTime: LoyaltyPromotionAvailableTimeData?
    /// - TriggerLimit: The number of times a buyer can earn promotion points during a specified interval. If not specified, buyers can trigger the promotion an unlimited number of times.
    var TriggerLimit: LoyaltyPromotionTriggerLimit?
    /// - Status: Read only The current status of the promotion.
    var Status: LoyaltyPromotionStatus?
    /// - CreatedAt: Read only The timestamp of when the promotion was created, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var CreatedAt: Date?
    @FormattedDate<RFC3339_Strategy> var CreatedAt: Date?
    /// - CanceledAt: Read only The timestamp of when the promotion was canceled, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var CanceledAt: Date?
    @FormattedDate<RFC3339_Strategy> var CanceledAt: Date?
    /// - UpdatedAt: Read only The timestamp of when the promotion was canceled, in RFC 3339 format.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var UpdatedAt: Date?
    @FormattedDate<RFC3339_Strategy> var UpdatedAt: Date?
    /// - LoyaltyProgramId: Read only The ID of the loyalty program associated with the promotion.
    var LoyaltyProgramId: String?
    /// - MinimumSpendAmountMoney: The minimum purchase amount required to earn promotion points. If specified, this amount is positive.
    var MinimumSpendAmountMoney: Money?
    /// - QualifyingItemVariationIds: The IDs of any qualifying ITEM_VARIATION catalog objects. If specified, the purchase must include at least one of these items to qualify for the promotion.
    /// This option is valid only if the base loyalty program uses a VISIT or SPEND accrual rule. With SPEND accrual rules, make sure that qualifying promotional items are not excluded.
    /// You can specify qualifying_item_variation_ids or qualifying_category_ids for a given promotion, but not both.
    var QualifyingItemVariationIds: [String]?
    /// - QualifyingCategoryIds: The IDs of any qualifying CATEGORY catalog objects. If specified, the purchase must include at least one item from one of these categories to qualify for the promotion.
    /// This option is valid only if the base loyalty program uses a VISIT or SPEND accrual rule. With SPEND accrual rules, make sure that qualifying promotional items are not excluded.
    /// You can specify qualifying_category_ids or qualifying_item_variation_ids for a promotion, but not both.
    var QualifyingCategoryIds: [String]?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case Name = "name"
        case Incentive = "incentive"
        case AvailableTime = "available_time"
        case TriggerLimit = "trigger_limit"
        case Status = "status"
        case CreatedAt = "created_at"
        case CanceledAt = "canceled_at"
        case UpdatedAt = "updated_at"
        case LoyaltyProgramId = "loyalty_program_id"
        case MinimumSpendAmountMoney = "minimum_spend_amount_money"
        case QualifyingItemVariationIds = "qualifying_item_variation_ids"
        case QualifyingCategoryIds = "qualifying_category_ids"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.Id = try container.decodeIfPresent(String.self, forKey: .Id)
//        self.Name = try container.decodeIfPresent(String.self, forKey: .Name)
//        self.Incentive = try container.decodeIfPresent(LoyaltyPromotionIncentive.self, forKey: .Incentive)
//        self.AvailableTime = try container.decodeIfPresent(LoyaltyPromotionAvailableTimeData.self, forKey: .AvailableTime)
//        self.TriggerLimit = try container.decodeIfPresent(LoyaltyPromotionTriggerLimit.self, forKey: .TriggerLimit)
//        self.Status = try container.decodeIfPresent(LoyaltyPromotionStatus.self, forKey: .Status)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CanceledAt), !dateString.isEmpty {
//            self.CanceledAt = try dateString.decode_RFC3339_Date(container, forKey: .CanceledAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .CreatedAt), !dateString.isEmpty {
//            self.CreatedAt = try dateString.decode_RFC3339_Date(container, forKey: .CreatedAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .UpdatedAt), !dateString.isEmpty {
//            self.UpdatedAt = try dateString.decode_RFC3339_Date(container, forKey: .UpdatedAt)
//        }
//        self.LoyaltyProgramId = try container.decodeIfPresent(String.self, forKey: .LoyaltyProgramId)
//        self.MinimumSpendAmountMoney = try container.decodeIfPresent(Money.self, forKey: .MinimumSpendAmountMoney)
//        self.QualifyingItemVariationIds = try container.decodeIfPresent([String].self, forKey: .QualifyingItemVariationIds)
//        self.QualifyingCategoryIds = try container.decodeIfPresent([String].self, forKey: .QualifyingCategoryIds)
//    }
}
