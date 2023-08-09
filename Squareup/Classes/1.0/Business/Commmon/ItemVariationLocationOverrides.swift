//
//  ItemVariationLocationOverrides.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 1.05.23.
//

import Foundation

/// - ItemVariationLocationOverrides: Price and inventory alerting overrides for a CatalogItemVariation at a specific Location.
/// https://developer.squareup.com/reference/square/objects/ItemVariationLocationOverrides
open class ItemVariationLocationOverrides: Codable {
    
    /// - LocationId: The ID of the Location. This can include locations that are deactivated.
    public var LocationId: String?
    /// - PriceMoney: The price of the CatalogItemVariation at the given Location, or blank for variable pricing.
    public var PriceMoney: Money?
    /// - PicingType: The pricing type (fixed or variable) for the CatalogItemVariation at the given Location.
    public var PicingType: CatalogPricingType?
    /// - TrackInventory: If true, inventory tracking is active for the CatalogItemVariation at this Location.
    public var TrackInventory: Bool?
    /// - InventoryAlertType: Indicates whether the CatalogItemVariation displays an alert when its inventory quantity is less than or equal to its inventory_alert_threshold.
    public var InventoryAlertType: InventoryAlertType?
    /// - InventoryAlertThreshold: If the inventory quantity for the variation is less than or equal to this value and inventory_alert_type is LOW_QUANTITY, the variation displays an alert in the merchant dashboard. This value is always an integer.
    public var InventoryAlertThreshold: Int?
    /// - SoldOut. Read only Indicates whether the overridden item variation is sold out at the specified location. When inventory tracking is enabled on the item variation either globally or at the specified location, the item variation is automatically marked as sold out when its inventory count reaches zero. The seller can manually set the item variation as sold out even when the inventory count is greater than zero. Attempts by an application to set this attribute are ignored. Regardless how the sold-out status is set, applications should treat its inventory count as zero when this attribute value is true.
    public var SoldOut: Bool?
    /// - SoldOutValidUntil: Read only The seller-assigned timestamp, of the RFC 3339 format, to indicate when this sold-out variation becomes available again at the specified location. Attempts by an application to set this attribute are ignored. When the current time is later than this attribute value, the affected item variation is no longer sold out. Examples for January 25th, 2020 6:25:34pm Pacific Standard Time: UTC: 2020-01-26T02:25:34Z. Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    public var SoldOutValidUntil: String?
    
    enum CodingKeys: String, CodingKey {
        case LocationId = "location_id"
        case PriceMoney = "price_money"
        case PicingType = "pricing_type"
        case TrackInventory = "track_inventory"
        case InventoryAlertType = "inventory_alert_type"
        case InventoryAlertThreshold = "inventory_alert_threshold"
        case SoldOut = "sold_out"
        case SoldOutValidUntil = "SoldOutValidUntil"
    }
}
