//
//  InventoryPhysicalCount.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 7.06.23.
//

import Foundation

/// - InventoryPhysicalCount: Represents the quantity of an item variation that is physically present at a specific location, verified by a seller or a seller's employee.
/// For example, a physical count might come from an employee counting the item variations on hand or from syncing with an external system.
/// https://developer.squareup.com/reference/square/objects/InventoryPhysicalCount
open class InventoryPhysicalCount: Codable {
    
    /// - Id: A unique Square-generated ID for the InventoryPhysicalCount.
    /// Max Length 100
    public var Id: String?
    /// - ReferenceId: An optional ID provided by the application to tie the InventoryPhysicalCount to an external system.
    /// Max Length 255
    public var ReferenceId: String?
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
    /// - Quantity: The number of items affected by the physical count as a decimal string. The number can support up to 5 digits after the decimal point.
    /// Max Length 26
    public var Quantity: String?
    /// - Source: Read only Information about the application with which the physical count is submitted
    public var Source: SourceApplication?
    /// - EmployeeId: The Square-generated ID of the Employee responsible for the physical count.
    /// Max Length 100
    public var EmployeeId: String?
    /// - TeamMemberId: The Square-generated ID of the Team Member responsible for the physical count.
    /// Max Length 100
    public var TeamMemberId: String?
    /// - OccurredAt: A client-generated RFC 3339-formatted timestamp that indicates when the physical count was examined. For physical count updates, the occurred_at timestamp cannot be older than 24 hours or in the future relative to the time of the request.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    /// Max Length 34
    @FormattedDate<RFC3339_Strategy> public var OccurredAt: Date?
    /// - CreatedAt: Read only An RFC 3339-formatted timestamp that indicates when the physical count is received.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    /// Max Length 34
    @FormattedDate<RFC3339_Strategy> public var CreatedAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case ReferenceId = "reference_id"
        case CatalogObjectId = "catalog_object_id"
        case catalogObjectType = "catalog_object_type"
        case State = "state"
        case LocationId = "location_id"
        case Quantity = "quantity"
        case Source = "source"
        case EmployeeId = "employee_id"
        case TeamMemberId = "team_member_id"
        case OccurredAt = "occurred_at"
        case CreatedAt = "created_at"
    }
}
