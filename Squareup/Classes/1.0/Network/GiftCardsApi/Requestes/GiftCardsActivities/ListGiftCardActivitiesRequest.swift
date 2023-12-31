//
//  ListGiftCardActivitiesRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.08.23.
//

import Foundation

open class ListGiftCardActivitiesRequest: Codable {
    
    /// - GiftCardId: If a gift card ID is provided, the endpoint returns activities related to the specified gift card. Otherwise, the endpoint returns all gift card activities for the seller.
    public var GiftCardId: String?
    /// - type: If a type is provided, the endpoint returns gift card activities of the specified type. Otherwise, the endpoint returns all types of gift card activities.
    public var type: GiftCardActivityType?
    /// - LocationLd: If a location ID is provided, the endpoint returns gift card activities for the specified location. Otherwise, the endpoint returns gift card activities for all locations.
    public var LocationLd: String?
    /// - BeginTime: The timestamp for the beginning of the reporting period, in RFC 3339 format. This start time is inclusive. The default value is the current time minus one year.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    @FormattedDate<RFC3339_Strategy> public var BeginTime: Date?
    /// - EndTime: The timestamp for the end of the reporting period, in RFC 3339 format. This end time is inclusive. The default value is the current time.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    @FormattedDate<RFC3339_Strategy> public var EndTime: Date?
    /// - Limit: If a limit is provided, the endpoint returns the specified number of results (or fewer) per page. The maximum value is 100. The default value is 50. For more information, see Pagination.
    public var Limit: Int?
    /// - Cursor: A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for the original query. If a cursor is not provided, the endpoint returns the first page of the results. For more information, see Pagination.
    public var Cursor: String?
    /// - sortOrder: The order in which the endpoint returns the activities, based on created_at.
    ///
    /// ASC - Oldest to newest.
    /// DESC - Newest to oldest (default).
    public var sortOrder: SortOrder?
    
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
}
