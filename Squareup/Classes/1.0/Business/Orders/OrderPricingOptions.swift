//
//  OrderPricingOptions.swift
//  Squareup
//
//  Created by user on 11.06.23.
//

import Foundation

/// - OrderPricingOptions: Pricing options for an order.
/// The options affect how the order's price is calculated. They can be used, for example, to apply automatic price adjustments that are based on preconfigured pricing rules.
/// https://developer.squareup.com/reference/square/objects/OrderPricingOptions
open class OrderPricingOptions: Codable {
    
    /// - AutoApplyDiscounts: The option to determine whether pricing rule-based discounts are automatically applied to an order.
    var AutoApplyDiscounts: Bool?
    /// - AutoApplyTaxes: The option to determine whether rule-based taxes are automatically applied to an order when the criteria of the corresponding rules are met.
    var AutoApplyTaxes: Bool?
    
    enum CodingKeys: String, CodingKey {
        case AutoApplyDiscounts = "auto_apply_discounts"
        case AutoApplyTaxes = "auto_apply_taxes"
    }
}
