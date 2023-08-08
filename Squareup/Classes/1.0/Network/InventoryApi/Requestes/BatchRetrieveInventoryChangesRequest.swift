//
//  BatchRetrieveInventoryChangesRequest.swift
//  Squareup
//
//  Created by user on 7.06.23.
//

import Foundation

internal class BatchRetrieveInventoryChangesRequest: Codable {
    
    /// - CatalogObjectIds: The filter to return results by CatalogObject ID. The filter is only applicable when set. The default value is null.
    var CatalogObjectIds: [String]?
    /// - LocationIds: The filter to return results by Location ID. The filter is only applicable when set. The default value is null.
    var LocationIds: [String]?
    /// - Types: The filter to return results by InventoryChangeType values other than TRANSFER. The default value is [PHYSICAL_COUNT, ADJUSTMENT].
    var Types: [InventoryChangeType]?
    /// - States: The filter to return ADJUSTMENT query results by InventoryState. This filter is only applied when set. The default value is null.
    var States: [InventoryState]?
    /// - UpdatedAfter: The filter to return results with their calculated_at value after the given time as specified in an RFC 3339 timestamp. The default value is the UNIX epoch of (1970-01-01T00:00:00Z).
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var UpdatedAfter: Date?
    @FormattedDate<RFC3339_Strategy> var UpdatedAfter: Date?
    /// - UpdatedBefore: The filter to return results with their created_at or calculated_at value strictly before the given time as specified in an RFC 3339 timestamp. The default value is the UNIX epoch of (1970-01-01T00:00:00Z).
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var UpdatedBefore: Date?
    @FormattedDate<RFC3339_Strategy> var UpdatedBefore: Date?
    /// - Cursor: A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for the original query.
    /// See the Pagination guide for more information.
    var Cursor: String?
    /// - Limit: The number of records to return.
    /// Min 1
    /// Max 1000
    var Limit: Int?
    
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
    
//    required init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.CatalogObjectIds = try container.decodeIfPresent([String].self, forKey: .CatalogObjectIds)
//        self.LocationIds = try container.decodeIfPresent([String].self, forKey: .LocationIds)
//        self.Types = try container.decodeIfPresent([InventoryChangeType].self, forKey: .Types)
//        self.States = try container.decodeIfPresent([InventoryState].self, forKey: .States)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .UpdatedAfter), !dateString.isEmpty {
//            self.UpdatedAfter = try dateString.decode_RFC3339_Date(container, forKey: .UpdatedAfter)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .UpdatedBefore), !dateString.isEmpty {
//            self.UpdatedBefore = try dateString.decode_RFC3339_Date(container, forKey: .UpdatedBefore)
//        }
//        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
//        self.Limit = try container.decodeIfPresent(Int.self, forKey: .Limit)
//    }
}
