//
//  BatchRetrieveInventoryChangesRequest.swift
//  Squareup
//
//  Created by user on 7.06.23.
//

import Foundation

open class BatchRetrieveInventoryChangesRequest: Codable {
    
    /// - CatalogObjectIds: The filter to return results by CatalogObject ID. The filter is only applicable when set. The default value is null.
    public var CatalogObjectIds: [String]?
    /// - LocationIds: The filter to return results by Location ID. The filter is only applicable when set. The default value is null.
    public var LocationIds: [String]?
    /// - Types: The filter to return results by InventoryChangeType values other than TRANSFER. The default value is [PHYSICAL_COUNT, ADJUSTMENT].
    public var Types: [InventoryChangeType]?
    /// - States: The filter to return ADJUSTMENT query results by InventoryState. This filter is only applied when set. The default value is null.
    public var States: [InventoryState]?
    /// - UpdatedAfter: The filter to return results with their calculated_at value after the given time as specified in an RFC 3339 timestamp. The default value is the UNIX epoch of (1970-01-01T00:00:00Z).
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    @FormattedDate<RFC3339_Strategy> public var UpdatedAfter: Date?
    /// - UpdatedBefore: The filter to return results with their created_at or calculated_at value strictly before the given time as specified in an RFC 3339 timestamp. The default value is the UNIX epoch of (1970-01-01T00:00:00Z).
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    @FormattedDate<RFC3339_Strategy> public var UpdatedBefore: Date?
    /// - Cursor: A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for the original query.
    /// See the Pagination guide for more information.
    public var Cursor: String?
    /// - Limit: The number of records to return.
    /// Min 1
    /// Max 1000
    public var Limit: Int?
    
    enum CodingKeys: String, CodingKey {
        case CatalogObjectIds = "catalog_object_ids"
        case LocationIds = "location_ids"
        case Types = "InventoryChangeType"
        case States = "states"
        case UpdatedAfter = "updated_after"
        case UpdatedBefore = "updated_before"
        case Cursor = "cursor"
        case Limit = "limit"
    }
}
