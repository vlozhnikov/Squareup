//
//  ListGiftCardActivitiesRequest.swift
//  Squareup
//
//  Created by user on 2.08.23.
//

import Foundation

internal class ListGiftCardActivitiesRequest: Codable {
    
    /// - GiftCardId: If a gift card ID is provided, the endpoint returns activities related to the specified gift card. Otherwise, the endpoint returns all gift card activities for the seller.
    var GiftCardId: String?
    /// - type: If a type is provided, the endpoint returns gift card activities of the specified type. Otherwise, the endpoint returns all types of gift card activities.
    var type: GiftCardActivityType?
    /// - LocationLd: If a location ID is provided, the endpoint returns gift card activities for the specified location. Otherwise, the endpoint returns gift card activities for all locations.
    var LocationLd: String?
    /// - BeginTime: The timestamp for the beginning of the reporting period, in RFC 3339 format. This start time is inclusive. The default value is the current time minus one year.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var BeginTime: Date?
    @FormattedDate<RFC3339_Strategy> var BeginTime: Date?
    /// - EndTime: The timestamp for the end of the reporting period, in RFC 3339 format. This end time is inclusive. The default value is the current time.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var EndTime: Date?
    @FormattedDate<RFC3339_Strategy> var EndTime: Date?
    /// - Limit: If a limit is provided, the endpoint returns the specified number of results (or fewer) per page. The maximum value is 100. The default value is 50. For more information, see Pagination.
    var Limit: Int?
    /// - Cursor: A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. If a cursor is not provided, the endpoint returns the first page of the results. For more information, see Pagination.
    var Cursor: String?
    /// - sortOrder: The order in which the endpoint returns the activities, based on created_at.
    ///
    /// ASC - Oldest to newest.
    /// DESC - Newest to oldest (default).
    var sortOrder: SortOrder?
    
    enum CodingKeys: String, CodingKey {
        case GiftCardId = "gift_card_id"
        case type = "type"
        case LocationLd = "location_id"
        case BeginTime = "begin_time"
        case EndTime = "end_time"
        case Limit = "limit"
        case Cursor = "cursor"
        case sortOrder = "sort_order"
    }
    
//    required init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.GiftCardId = try container.decodeIfPresent(String.self, forKey: .GiftCardId)
//        self.type = try container.decodeIfPresent(GiftCardActivityType.self, forKey: .type)
//        self.LocationLd = try container.decodeIfPresent(String.self, forKey: .LocationLd)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .BeginTime), !dateString.isEmpty {
//            self.BeginTime = try dateString.decode_RFC3339_Date(container, forKey: .BeginTime)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .EndTime), !dateString.isEmpty {
//            self.EndTime = try dateString.decode_RFC3339_Date(container, forKey: .EndTime)
//        }
//        self.Limit = try container.decodeIfPresent(Int.self, forKey: .Limit)
//        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
//        self.sortOrder = try container.decodeIfPresent(SortOrder.self, forKey: .sortOrder)
//    }
}
