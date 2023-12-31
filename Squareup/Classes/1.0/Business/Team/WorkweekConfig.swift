//
//  WorkweekConfig.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 4.08.23.
//

import Foundation

/// - WorkweekConfig: Sets the day of the week and hour of the day that a business starts a workweek.
/// This is used to calculate overtime pay.
/// https://developer.squareup.com/reference/square/objects/WorkweekConfig
open class WorkweekConfig: Codable {
    
    /// - Id: The UUID for this object.
    public var Id: String?
    /// - StartOfWeek: The day of the week on which a business week starts for compensation purposes.
    public var StartOfWeek: Weekday?
    /// - StartOfDayLocalTime: The local time at which a business week starts. Represented as a string in HH:MM format (HH:MM:SS is also accepted, but seconds are truncated).
    /// Min Length 1
    @FormattedDate<HHMMSS_Strategy> public var StartOfDayLocalTime: Date?
    /// - Version: Used for resolving concurrency issues. The request fails if the version provided does not match the server version at the time of the request. If not provided, Square executes a blind write; potentially overwriting data from another write.
    public var Version: Int?
    /// - CreatedAt: Read only The timestamp, in RFC 3339 format, describing when the team member was created. For example, "2018-10-04T04:00:00-07:00" or "2019-02-05T12:00:00Z".
    ///
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    @FormattedDate<RFC3339_Strategy> public var CreatedAt: Date?
    /// - UpdatedAt: Read only The timestamp, in RFC 3339 format, describing when the team member was last updated. For example, "2018-10-04T04:00:00-07:00" or "2019-02-05T12:00:00Z".
    ///
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    @FormattedDate<RFC3339_Strategy> public var UpdatedAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case StartOfWeek = "start_of_week"
        case StartOfDayLocalTime = "start_of_day_local_time"
        case Version = "version"
        case CreatedAt = "created_at"
        case UpdatedAt = "updated_at"
    }
}
