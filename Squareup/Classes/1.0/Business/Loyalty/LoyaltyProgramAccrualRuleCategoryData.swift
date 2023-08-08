//
//  LoyaltyProgramAccrualRuleCategoryData.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

/// - LoyaltyProgramAccrualRuleCategoryData: Represents additional data for rules with the CATEGORY accrual type.
/// https://developer.squareup.com/reference/square/objects/LoyaltyProgramAccrualRuleCategoryData
open class LoyaltyProgramAccrualRuleCategoryData: Codable {
    
    /// - CategoryId: The ID of the CATEGORY catalog object that buyers can purchase to earn points.
    /// Min Length 1
    public var CategoryId: String?
    
    enum CodingKeys: String, CodingKey {
        case CategoryId = "category_id"
    }
}
