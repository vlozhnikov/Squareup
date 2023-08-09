//
//  Shift.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

/// - Shift: A record of the hourly rate, start, and end times for a single work shift for an employee.
/// his might include a record of the start and end times for breaks taken during the shift.
/// https://developer.squareup.com/reference/square/objects/Shift
open class Shift: Codable {
    
    /// - Id: The UUID for this object.
    /// Max Length 255
    public var Id: String?
    /// - EmployeeId: Deprecated
    /// The ID of the employee this shift belongs to. DEPRECATED at version 2020-08-26. Use team_member_id instead.
    public var EmployeeId: String?
    /// - LocationId: The ID of the location this shift occurred at. The location should be based on where the employee clocked in.
    public var LocationId: String?
    /// - Timezone: The read-only convenience value that is calculated from the location based on the location_id. Format: the IANA timezone database identifier for the location timezone.
    public var Timezone: String?
    /// - StartAt: RFC 3339; shifted to the location timezone + offset. Precision up to the minute is respected; seconds are truncated.
    /// Min Length 1
    @FormattedDate<RFC3339_Strategy> public var StartAt: Date?
    /// - EndAt: RFC 3339; shifted to the timezone + offset. Precision up to the minute is respected; seconds are truncated.
    @FormattedDate<RFC3339_Strategy> public var EndAt: Date?
    /// - Wage: Job and pay related information. If the wage is not set on create, it defaults to a wage of zero. If the title is not set on create, it defaults to the name of the role the employee is assigned to, if any.
    public var Wage: ShiftWage?
    /// - Breaks: A list of all the paid or unpaid breaks that were taken during this shift.
    public var Breaks: [Break]?
    /// - Status: Describes the working state of the current Shift.
    public var Status: ShiftStatus?
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
    /// - TeamMemberId: The ID of the team member this shift belongs to. Replaced employee_id at version "2020-08-26".
    public var TeamMemberId: String?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case EmployeeId = "employee_id"
        case LocationId = "location_id"
        case Timezone = "timezone"
        case StartAt = "start_at"
        case EndAt = "end_at"
        case Wage = "wage"
        case Breaks = "breaks"
        case Status = "status"
        case Version = "version"
        case CreatedAt = "created_at"
        case UpdatedAt = "updated_at"
        case TeamMemberId = "team_member_id"
    }
}
