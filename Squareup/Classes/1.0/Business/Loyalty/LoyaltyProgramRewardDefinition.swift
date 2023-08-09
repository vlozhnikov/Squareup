//
//  LoyaltyProgramRewardDefinition.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

/// - LoyaltyProgramRewardDefinition: Provides details about the reward tier discount.
/// DEPRECATED at version 2020-12-16. Discount details are now defined using a catalog pricing rule and other catalog objects. For more information, see Getting discount details for a reward tier.
/// https://developer.squareup.com/reference/square/objects/LoyaltyProgramRewardDefinition
open class LoyaltyProgramRewardDefinition: Codable {
    
    /// - Scope: Read only Indicates the scope of the reward tier. DEPRECATED at version 2020-12-16. You can find this information in the discount_target_scope field of the PRICING_RULE catalog object and the product_set_data field of the PRODUCT_SET catalog object referenced by the pricing rule. For ORDER scopes, the target scope is WHOLE_PURCHASE and all_products is true. For ITEM_VARIATION and CATEGORY scopes, the target scope is LINE_ITEM and product_ids_any is a list of catalog object IDs of the given type.
    public var Scope: LoyaltyProgramRewardDefinitionScope?
    /// - DiscountType: Read only The type of discount the reward tier offers. DEPRECATED at version 2020-12-16. You can find this information in the discount_data.discount_type field of the DISCOUNT catalog object referenced by the pricing rule.
    public var DiscountType: LoyaltyProgramRewardDefinitionType?
    /// - PercentageDiscount: Read only The fixed percentage of the discount. Present if discount_type is FIXED_PERCENTAGE. For example, a 7.25% off discount will be represented as "7.25". DEPRECATED at version 2020-12-16. You can find this information in the discount_data.percentage field of the DISCOUNT catalog object referenced by the pricing rule.
    public var PercentageDiscount: String?
    /// - CatalogObjectIds: Read only The list of catalog objects to which this reward can be applied. They are either all item-variation ids or category ids, depending on the type field. DEPRECATED at version 2020-12-16. You can find this information in the product_set_data.product_ids_any field of the PRODUCT_SET catalog object referenced by the pricing rule.
    public var CatalogObjectIds: [String]?
    /// - FixedDiscountMoney: Read only The amount of the discount. Present if discount_type is FIXED_AMOUNT. For example, $5 off. DEPRECATED at version 2020-12-16. You can find this information in the discount_data.amount_money field of the DISCOUNT catalog object referenced by the pricing rule.
    public var FixedDiscountMoney: Money?
    /// - MaxDiscountMoney: Read only When discount_type is FIXED_PERCENTAGE, the maximum discount amount that can be applied. DEPRECATED at version 2020-12-16. You can find this information in the discount_data.maximum_amount_money field of the DISCOUNT catalog object referenced by the the pricing rule.
    public var MaxDiscountMoney: Money?
    
    enum CodingKeys: String, CodingKey {
        case Scope = "scope"
        case DiscountType = "discount_type"
        case PercentageDiscount = "percentage_discount"
        case CatalogObjectIds = "catalog_object_ids"
        case FixedDiscountMoney = "fixed_discount_money"
        case MaxDiscountMoney = "max_discount_money"
    }
}
