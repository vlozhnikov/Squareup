//
//  ListPayoutsRequest.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

open class ListPayoutsRequest: Codable {
    
    /// - LocationId: The ID of the location for which to list the payouts. By default, payouts are returned for the default (main) location associated with the seller.
    public var LocationId: String?
    /// - Status: If provided, only payouts with the given status are returned.
    public var Status: PayoutStatus?
    /// - BeginTime: The timestamp for the beginning of the payout creation time, in RFC 3339 format. Inclusive. Default: The current time minus one year.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var BeginTime: Date?
    @FormattedDate<RFC3339_Strategy> public var BeginTime: Date?
    /// - EndTime: The timestamp for the end of the payout creation time, in RFC 3339 format. Default: The current time.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var EndTime: Date?
    @FormattedDate<RFC3339_Strategy> public var EndTime: Date?
    /// - sortOrder: The order in which payouts are listed.
    public var sortOrder: SortOrder?
    /// - Cursor: A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. For more information, see Pagination. If request parameters change between requests, subsequent results may contain duplicates or missing records.
    public var Cursor: String?
    /// - Limit: The maximum number of results to be returned in a single page. It is possible to receive fewer results than the specified limit on a given page. The default value of 100 is also the maximum allowed value. If the provided value is greater than 100, it is ignored and the default value is used instead. Default: 100
    public var Limit: Int?
    
    enum CodingKeys: String, CodingKey {
        case LocationId = "location_id"
        case Status = "status"
        case BeginTime = "begin_time"
        case EndTime = "end_time"
        case sortOrder = "sort_order"
        case Cursor = "cursor"
        case Limit = "limit"
    }
    
//    required init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.LocationId = try container.decodeIfPresent(String.self, forKey: .LocationId)
//        self.Status = try container.decodeIfPresent(PayoutStatus.self, forKey: .Status)
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .BeginTime), !dateString.isEmpty {
//            self.BeginTime = try dateString.decode_RFC3339_Date(container, forKey: .BeginTime)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .EndTime), !dateString.isEmpty {
//            self.EndTime = try dateString.decode_RFC3339_Date(container, forKey: .EndTime)
//        }
//        self.sortOrder = try container.decodeIfPresent(SortOrder.self, forKey: .sortOrder)
//        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
//        self.Limit = try container.decodeIfPresent(Int.self, forKey: .Limit)
//    }
}
