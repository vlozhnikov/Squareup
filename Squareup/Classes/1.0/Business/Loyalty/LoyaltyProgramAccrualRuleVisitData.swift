//
//  LoyaltyProgramAccrualRuleVisitData.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

/// - LoyaltyProgramAccrualRuleVisitData: Represents additional data for rules with the VISIT accrual type.
/// https://developer.squareup.com/reference/square/objects/LoyaltyProgramAccrualRuleVisitData
open class LoyaltyProgramAccrualRuleVisitData: Codable {
    
    /// - MinimumAmountMoney: The minimum purchase required during the visit to quality for points.
    public var MinimumAmountMoney: Money?
    /// - TaxMode: ndicates how taxes should be treated when calculating the purchase amount to determine whether the visit qualifies for points. This setting applies only if minimum_amount_money is specified.
    public var TaxMode: LoyaltyProgramAccrualRuleTaxMode?
    
    enum CodingKeys: String, CodingKey {
        case MinimumAmountMoney = "minimum_amount_money"
        case TaxMode = "tax_mode"
    }
}
