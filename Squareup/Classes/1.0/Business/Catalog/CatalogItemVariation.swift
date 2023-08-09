//
//  CatalogItemVariation.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 1.05.23.
//

import Foundation

/// - CatalogItemVariation: An item variation, representing a product for sale, in the Catalog object model.
/// Each item must have at least one item variation and can have at most 250 item variations.
/// An item variation can be sellable, stockable, or both if it has a unit of measure for its count for the sold number of the variation, the stocked number of the variation, or both. For example, when a variation representing wine is stocked and sold by the bottle, the variation is both stockable and sellable. But when a variation of the wine is sold by the glass, the sold units cannot be used as a measure of the stocked units. This by-the-glass variation is sellable, but not stockable. To accurately keep track of the wine's inventory count at any time, the sellable count must be converted to stockable count. Typically, the seller defines this unit conversion. For example, 1 bottle equals 5 glasses. The Square API exposes the stockable_conversion property on the variation to specify the conversion. Thus, when two glasses of the wine are sold, the sellable count decreases by 2, and the stockable count automatically decreases by 0.4 bottle according to the conversion.
/// https://developer.squareup.com/reference/square/objects/CatalogItemVariation
open class CatalogItemVariation: Codable {
    
    /// - ItemID: The ID of the CatalogItem associated with this item variation.
    public var ItemID: String?
    /// - Name: The item variation's name. This is a searchable attribute for use in applicable query filters, and its value length is of Unicode code points. Max Length 255.
    public var Name: String?
    /// - SKU: The item variation's SKU, if any. This is a searchable attribute for use in applicable query filters.
    public var SKU: String?
    /// - Upc: The universal product code (UPC) of the item variation, if any. This is a searchable attribute for use in applicable query filters. The value of this attribute should be a number of 12-14 digits long. This restriction is enforced on the Square Seller Dashboard, Square Point of Sale or Retail Point of Sale apps, where this attribute shows in the GTIN field. If a non-compliant UPC value is assigned to this attribute using the API, the value is not editable on the Seller Dashboard, Square Point of Sale or Retail Point of Sale apps unless it is updated to fit the expected format.
    public var Upc: String?
    /// - Ordinal: Read only The order in which this item variation should be displayed. This value is read-only. On writes, the ordinal for each item variation within a parent CatalogItem is set according to the item variations's position. On reads, the value is not guaranteed to be sequential or unique.
    public var Ordinal: Int?
    /// - PricingType: Indicates whether the item variation's price is fixed or determined at the time of sale.
    public var PricingType: CatalogPricingType?
    /// - PriceMoney: The item variation's price, if fixed pricing is used.
    public var PriceMoney: Money?
    /// - LocationOverrides: Per-location price and inventory overrides.
    public var LocationOverrides = [ItemVariationLocationOverrides]()
    /// - TrackInventory: If true, inventory tracking is active for the variation.
    public var TrackInventory: Bool?
    /// - InventoryAlertType: Indicates whether the item variation displays an alert when its inventory quantity is less than or equal to its inventory_alert_threshold.
    public var inventoryAlertType: InventoryAlertType?
    /// - InventoryAlertThreshold: If the inventory quantity for the variation is less than or equal to this value and inventory_alert_type is LOW_QUANTITY, the variation displays an alert in the merchant dashboard. This value is always an integer.
    public var InventoryAlertThreshold: Int?
    /// - UserData: Arbitrary user metadata to associate with the item variation. This attribute value length is of Unicode code points.  Max Length 255.
    public var UserData: String?
    /// - ServiceDuration: If the CatalogItem that owns this item variation is of type APPOINTMENTS_SERVICE, then this is the duration of the service in milliseconds. For example, a 30 minute appointment would have the value 1800000, which is equal to 30 (minutes) * 60 (seconds per minute) * 1000 (milliseconds per second).
    public var ServiceDuration: Int?
    /// - AvailableForBooking: If the CatalogItem that owns this item variation is of type APPOINTMENTS_SERVICE, a bool representing whether this service is available for booking.
    public var AvailableForBooking: Bool?
    /// - ItemOptionValues: List of item option values associated with this item variation. Listed in the same order as the item options of the parent item.
    public var ItemOptionValues = [CatalogItemOptionValueForItemVariation]()
    /// - MeasurementUnitId: ID of the ‘CatalogMeasurementUnit’ that is used to measure the quantity sold of this item variation. If left unset, the item will be sold in whole quantities.
    public var MeasurementUnitId: String?
    /// - Sellable: Whether this variation can be sold. The inventory count of a sellable variation indicates the number of units available for sale. When a variation is both stockable and sellable, its sellable inventory count can be smaller than or equal to its stockable count.
    public var Sellable: Bool?
    /// - Stockable: Whether stock is counted directly on this variation (TRUE) or only on its components (FALSE). When a variation is both stockable and sellable, the inventory count of a stockable variation keeps track of the number of units of this variation in stock and is not an indicator of the number of units of the variation that can be sold.
    public var Stockable: Bool?
    /// - ImageIds: The IDs of images associated with this CatalogItemVariation instance. These images will be shown to customers in Square Online Store.
    public var ImageIds = [String]()
    /// - TeamMemberIds: Tokens of employees that can perform the service represented by this variation. Only valid for variations of type APPOINTMENTS_SERVICE.
    public var TeamMemberIds = [String]()
    /// - StockableConversion: The unit conversion rule, as prescribed by the CatalogStockConversion type, that describes how this non-stockable (i.e., sellable/receivable) item variation is converted to/from the stockable item variation sharing the same parent item. With the stock conversion, you can accurately track inventory when an item variation is sold in one unit, but stocked in another unit.
    public var StockableConversion: CatalogStockConversion?
    /// - ItemVariationVendorInfoIds: A list of ids of CatalogItemVariationVendorInfo objects that reference this ItemVariation. (Deprecated in favor of item_variation_vendor_infos)
    public var ItemVariationVendorInfoIds = [String]()
    
    enum CodingKeys: String, CodingKey {
        case ItemID = "item_id"
        case Name = "name"
        case SKU = "sku"
        case Upc = "upc"
        case Ordinal = "ordinal"
        case PricingType = "pricing_type"
        case PriceMoney = "price_money"
        case LocationOverrides = "location_overrides"
        case TrackInventory = "track_inventory"
        case inventoryAlertType = "inventory_alert_type"
        case InventoryAlertThreshold = "inventory_alert_threshold"
        case UserData = "user_data"
        case ServiceDuration = "service_duration"
        case AvailableForBooking = "available_for_booking"
        case ItemOptionValues = "item_option_values"
        case MeasurementUnitId = "measurement_unit_id"
        case Sellable = "sellable"
        case Stockable = "stockable"
        case ImageIds = "image_ids"
        case TeamMemberIds = "team_member_ids"
        case StockableConversion = "stockable_conversion"
        case ItemVariationVendorInfoIds = "item_variation_vendor_info_ids"
    }
}
