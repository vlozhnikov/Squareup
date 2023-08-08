//
//  InventoryChange.swift
//  Squareup
//
//  Created by user on 7.06.23.
//

import Foundation

/// - InventoryChange: Represents a single physical count, inventory, adjustment, or transfer that is part of the history of inventory changes for a particular CatalogObject instance.
/// https://developer.squareup.com/reference/square/objects/InventoryChange
open class InventoryChange: Codable {
    
    /// - type: Indicates how the inventory change is applied. See InventoryChangeType for all possible values.
    var type: InventoryChangeType?
    /// - PhysicalCount: Contains details about the physical count when type is PHYSICAL_COUNT, and is unset for all other change types.
    var PhysicalCount: InventoryPhysicalCount?
    /// - Adjustment: Contains details about the inventory adjustment when type is ADJUSTMENT, and is unset for all other change types.
    var Adjustment: InventoryAdjustment?
    /// - Transfer: Contains details about the inventory transfer when type is TRANSFER, and is unset for all other change types.
    /// Note: An InventoryTransfer object can only be set in the input to the BatchChangeInventory endpoint when the seller has an active Retail Plus subscription.
    var Transfer: InventoryTransfer?
    /// - MeasurementInit: Read only The CatalogMeasurementUnit object representing the catalog measurement unit associated with the inventory change.
    var MeasurementInit: CatalogMeasurementUnit?
    /// - MeasurementUnitId: Read only The ID of the CatalogMeasurementUnit object representing the catalog measurement unit associated with the inventory change.
    var MeasurementUnitId: String?
    
    enum CodingKeys: String, CodingKey {
        case type = "type"
        case PhysicalCount = "physical_count"
        case Adjustment = "adjustment"
        case Transfer = "transfer"
        case MeasurementInit = "measurement_unit"
        case MeasurementUnitId = "measurement_unit_id"
    }
}
