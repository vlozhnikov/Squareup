//
//  LoyaltyProgramAccrualRuleItemVariationData.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

/// - LoyaltyProgramAccrualRuleItemVariationData: Represents additional data for rules with the ITEM_VARIATION accrual type.
/// https://developer.squareup.com/reference/square/objects/LoyaltyProgramAccrualRuleItemVariationData
open class LoyaltyProgramAccrualRuleItemVariationData: Codable {
    
    /// - ItemVariationId: The ID of the ITEM_VARIATION catalog object that buyers can purchase to earn points.
    /// Min Length 1
    public var ItemVariationId: String?
    
    enum CodingKeys: String, CodingKey {
        case ItemVariationId = "item_variation_id"
    }
}
