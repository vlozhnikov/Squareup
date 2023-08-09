//
//  LoyaltyProgramAccrualRuleSpendData.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

/// - LoyaltyProgramAccrualRuleSpendData: Represents additional data for rules with the SPEND accrual type.
/// https://developer.squareup.com/reference/square/objects/LoyaltyProgramAccrualRuleSpendData
open class LoyaltyProgramAccrualRuleSpendData: Codable {
    
    /// - AmountMoney: The amount that buyers must spend to earn points. For example, given an "Earn 1 point for every $10 spent" accrual rule, a buyer who spends $105 earns 10 points.
    public var AmountMoney: Money?
    /// - ExcludedCategoryIds: The IDs of any CATEGORY catalog objects that are excluded from points accrual.
    /// You can use the BatchRetrieveCatalogObjects endpoint to retrieve information about the excluded categories.
    public var ExcludedCategoryIds: [String]?
    /// - ExcludedItemVariationIds: The IDs of any ITEM_VARIATION catalog objects that are excluded from points accrual.
    /// You can use the BatchRetrieveCatalogObjects endpoint to retrieve information about the excluded item variations.
    public var ExcludedItemVariationIds: [String]?
    /// - TaxMode: Indicates how taxes should be treated when calculating the purchase amount used for points accrual.
    public var TaxMode: LoyaltyProgramAccrualRuleTaxMode?
    
    enum CodingKeys: String, CodingKey {
        case AmountMoney = "amount_money"
        case ExcludedCategoryIds = "excluded_category_ids"
        case ExcludedItemVariationIds = "excluded_item_variation_ids"
        case TaxMode = "tax_mode"
    }
}
