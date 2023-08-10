//
//  ListBookingRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.06.23.
//

import Foundation

internal class ListBookingRequest: Codable {
    
    /// - Limit: The maximum number of results per page to return in a paged response.
    var Limit: Int?
    /// - Cursor: The pagination cursor from the preceding response to return the next page of the results. Do not set this when retrieving the first page of the results.
    var Cursor: String?
    /// - TeamMemberId: The team member for whom to retrieve bookings. If this is not set, bookings of all members are retrieved.
    var TeamMemberId: String?
    /// - LocationId: The location for which to retrieve bookings. If this is not set, all locations' bookings are retrieved.
    var LocationId: String?
    /// - StartAtMin: The RFC 3339 timestamp specifying the earliest of the start time. If this is not set, the current time is used.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    ///  Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    @FormattedDate<RFC3339_Strategy> var StartAtMin: Date?
    /// - StartAtMax: The RFC 3339 timestamp specifying the latest of the start time. If this is not set, the time of 31 days after start_at_min is used.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    @FormattedDate<RFC3339_Strategy> var StartAtMax: Date?
    
    enum CodingKeys: String, CodingKey {
        case Limit = "limit"
        case Cursor = "cursor"
        case TeamMemberId = "team_member_id"
        case LocationId = "location_id"
        case StartAtMin = "start_at_min"
        case StartAtMax = "start_at_max"
    }
}
