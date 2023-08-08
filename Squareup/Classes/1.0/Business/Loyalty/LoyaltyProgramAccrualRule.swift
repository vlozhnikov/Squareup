//
//  LoyaltyProgramAccrualRule.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

/// - LoyaltyProgramAccrualRule: Represents an accrual rule, which defines how buyers can earn points from the base loyalty program.
/// https://developer.squareup.com/reference/square/objects/LoyaltyProgramAccrualRule
open class LoyaltyProgramAccrualRule: Codable {
    
    /// - AccrualType: The type of the accrual rule that defines how buyers can earn points.
    var AccrualType: LoyaltyProgramAccrualRuleType?
    /// - Points: The number of points that buyers earn based on the accrual_type.
    /// Min 1
    var Points: Int?
    /// - VisitData: Additional data for rules with the VISIT accrual type.
    var VisitData: LoyaltyProgramAccrualRuleVisitData?
    /// - SpendData: Additional data for rules with the SPEND accrual type.
    var SpendData: LoyaltyProgramAccrualRuleSpendData?
    /// - ItemVariationData: Additional data for rules with the ITEM_VARIATION accrual type.
    var ItemVariationData: LoyaltyProgramAccrualRuleItemVariationData?
    /// - CategoryData: Additional data for rules with the CATEGORY accrual type.
    var CategoryData: LoyaltyProgramAccrualRuleCategoryData?
    
    enum CodingKeys: String, CodingKey {
        case AccrualType = "accrual_type"
        case Points = "points"
        case VisitData = "visit_data"
        case SpendData = "spend_data"
        case ItemVariationData = "item_variation_data"
        case CategoryData = "category_data"
    }
}
