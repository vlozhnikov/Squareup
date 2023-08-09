//
//  OrderLineItemPricingBlocklistsBlockedDiscount.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 9.06.23.
//

import Foundation

/// - OrderLineItemPricingBlocklistsBlockedDiscount: A discount to block from applying to a line item.
/// The discount must be identified by either discount_uid or discount_catalog_object_id, but not both.
/// https://developer.squareup.com/reference/square/objects/OrderLineItemPricingBlocklistsBlockedDiscount
open class OrderLineItemPricingBlocklistsBlockedDiscount: Codable {
    
    /// - UID: A unique ID of the BlockedDiscount within the order.
    /// Max Length 60
    public var UID: String?
    /// - DiscountUid: The uid of the discount that should be blocked. Use this field to block ad hoc discounts. For catalog discounts, use the discount_catalog_object_id field.
    /// Max Length 60
    public var DiscountUid: String?
    /// - DiscountCatalogObjectId: The catalog_object_id of the discount that should be blocked. Use this field to block catalog discounts. For ad hoc discounts, use the discount_uid field.
    /// Max Length 192
    public var DiscountCatalogObjectId: String?
    
    enum CodingKeys: String, CodingKey {
        case UID = "uid"
        case DiscountUid = "discount_uid"
        case DiscountCatalogObjectId = "discount_catalog_object_id"
    }
}
