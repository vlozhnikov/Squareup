//
//  OrderLineItemPricingBlocklistsBlockedTax.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 9.06.23.
//

import Foundation

/// - OrderLineItemPricingBlocklistsBlockedTax: A tax to block from applying to a line item.
/// The tax must be identified by either tax_uid or tax_catalog_object_id, but not both.
/// https://developer.squareup.com/reference/square/objects/OrderLineItemPricingBlocklistsBlockedTax
open class OrderLineItemPricingBlocklistsBlockedTax: Codable {
    
    /// - UID: A unique ID of the BlockedTax within the order.
    /// Max Length 60
    public var UID: String?
    /// - TaxUid: The uid of the tax that should be blocked. Use this field to block ad hoc taxes. For catalog, taxes use the tax_catalog_object_id field.
    /// Max Length 60
    public var TaxUid: String?
    /// - TaxCatalogObjectId: The catalog_object_id of the tax that should be blocked. Use this field to block catalog taxes. For ad hoc taxes, use the tax_uid field.
    /// Max Length 192
    public var TaxCatalogObjectId: String?
    
    enum CodingKeys: String, CodingKey {
        case UID = "uid"
        case TaxUid = "tax_uid"
        case TaxCatalogObjectId = "tax_catalog_object_id"
    }
}
