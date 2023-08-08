//
//  OrderLineItemPricingBlocklists.swift
//  Squareup
//
//  Created by user on 9.06.23.
//

import Foundation

/// - OrderLineItemPricingBlocklists: Describes pricing adjustments that are blocked from automatic application to a line item.For more information, see Apply Taxes and Discounts.
/// https://developer.squareup.com/reference/square/objects/OrderLineItemPricingBlocklists
open class OrderLineItemPricingBlocklists: Codable {
    
    /// - BlockedDiscounts: A list of discounts blocked from applying to the line item. Discounts can be blocked by the discount_uid (for ad hoc discounts) or the discount_catalog_object_id (for catalog discounts).
    public var BlockedDiscounts: [OrderLineItemPricingBlocklistsBlockedDiscount]?
    /// - BlockedTaxes: A list of taxes blocked from applying to the line item. Taxes can be blocked by the tax_uid (for ad hoc taxes) or the tax_catalog_object_id (for catalog taxes).
    public var BlockedTaxes: [OrderLineItemPricingBlocklistsBlockedTax]?
    
    enum CodingKeys: String, CodingKey {
        case BlockedDiscounts = "blocked_discounts"
        case BlockedTaxes = "blocked_taxes"
    }
}
