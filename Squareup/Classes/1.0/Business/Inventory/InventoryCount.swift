//
//  InventoryCount.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 7.06.23.
//

import Foundation

/// - InventoryCount: Represents Square-estimated quantity of items in a particular state at a particular seller location based on the known history of physical counts and inventory adjustments.
/// https://developer.squareup.com/reference/square/objects/InventoryCount
open class InventoryCount: Codable {
    
    /// - CatalogObjectId: The Square-generated ID of the CatalogObject being tracked.
    /// Max Length 100
    public var CatalogObjectId: String?
    /// - catalogObjectType: The type of the CatalogObject being tracked.
    /// The Inventory API supports setting and reading the "catalog_object_type": "ITEM_VARIATION" field value. In addition, it can also read the "catalog_object_type": "ITEM" field value that is set by the Square Restaurants app.
    /// Max Length 14
    public var catalogObjectType: CatalogObjectType?
    /// - State: The current inventory state for the related quantity of items.
    public var State: InventoryState?
    /// - LocationId: The Square-generated ID of the Location where the related quantity of items is being tracked.
    /// Max Length 100
    public var LocationId: String?
    /// - Quantity: The number of items affected by the estimated count as a decimal string. Can support up to 5 digits after the decimal point.
    /// Max Length 26
    public var Quantity: String?
    /// - CalculatedAt: Read only An RFC 3339-formatted timestamp that indicates when the most recent physical count or adjustment affecting the estimated count is received.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    /// Max Length 34
    @FormattedDate<RFC3339_Strategy> public var CalculatedAt: Date?
    /// - IsEstimated: Read only Whether the inventory count is for composed variation (TRUE) or not (FALSE). If true, the inventory count will not be present in the response of any of these endpoints:
    public var IsEstimated: Bool?
    
    enum CodingKeys: String, CodingKey {
        case CatalogObjectId = "catalog_object_id"
        case catalogObjectType = "catalog_object_type"
        case State = "state"
        case LocationId = "location_id"
        case Quantity = "quantity"
        case CalculatedAt = "calculated_at"
        case IsEstimated = "is_estimated"
    }
}
