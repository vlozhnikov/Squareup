//
//  ListCashDrawerShiftsRequest.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

internal class ListCashDrawerShiftsRequest: Codable {
    
    /// - LocationId: The ID of the location to query for a list of cash drawer shifts.
    var LocationId: String?
    /// - sortOrder: The order in which cash drawer shifts are listed in the response, based on their opened_at field. Default value: ASC
    var sortOrder: SortOrder?
//    var BeginTime: Date?
    @FormattedDate<RFC3339_Strategy> var BeginTime: Date?
    /// - EndTime: The exclusive end date of the query on opened_at, in ISO 8601 format.
//    var EndTime: Date?
    @FormattedDate<RFC3339_Strategy> var EndTime: Date?
    /// - Limit: Number of cash drawer shift events in a page of results (200 by default, 1000 max).
    var Limit: Int?
    /// - Cursor: Opaque cursor for fetching the next page of results.
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case LocationId = "location_id"
        case sortOrder = "sort_order"
        case BeginTime = "begin_time"
        case EndTime = "end_time"
        case Limit = "limit"
        case Cursor = "cursor"
    }
    
//    required init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.LocationId = try container.decodeIfPresent(String.self, forKey: .LocationId)
//        self.sortOrder = try container.decodeIfPresent(SortOrder.self, forKey: .sortOrder)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .BeginTime), !dateString.isEmpty {
//            self.BeginTime = try dateString.decode_RFC3339_Date(container, forKey: .BeginTime)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .EndTime), !dateString.isEmpty {
//            self.EndTime = try dateString.decode_RFC3339_Date(container, forKey: .EndTime)
//        }
//        self.Limit = try container.decodeIfPresent(Int.self, forKey: .Limit)
//        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
//    }
}
