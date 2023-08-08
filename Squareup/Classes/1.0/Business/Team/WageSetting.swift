//
//  WageSetting.swift
//  Squareup
//
//  Created by user on 6.06.23.
//

import Foundation

/// - WageSetting: An object representing a team member's wage information.
/// https://developer.squareup.com/reference/square/objects/WageSetting
open class WageSetting: Codable {
    
    /// - TeamMemberId: The unique ID of the TeamMember whom this wage setting describes.
    public var TeamMemberId: String?
    /// - JobAssignments: Required. The ordered list of jobs that the team member is assigned to. The first job assignment is considered the team member's primary job.
    ///
    /// The minimum length is 1 and the maximum length is 12.
    public var JobAssignments: [JobAssignment]?
    /// - IsOvertimeExempt: Whether the team member is exempt from the overtime rules of the seller's country
    public var IsOvertimeExempt: Bool?
    /// - Version: Used for resolving concurrency issues. The request fails if the version provided does not match the server version at the time of the request. If not provided, Square executes a blind write, potentially overwriting data from another write. For more information, see optimistic concurrency.
    public var Version: Int?
    /// - CreatedAt: Read only The timestamp, in RFC 3339 format, describing when the wage setting object was created. For example, "2018-10-04T04:00:00-07:00" or "2019-02-05T12:00:00Z".
    ///
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var CreatedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var CreatedAt: Date?
    /// - UpdatedAt: Read only The timestamp, in RFC 3339 format, describing when the wage setting object was last updated. For example, "2018-10-04T04:00:00-07:00" or "2019-02-05T12:00:00Z".
    ///
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var UpdatedAt: Date?
    @FormattedDate<RFC3339_Strategy> public var UpdatedAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case TeamMemberId = "team_member_id"
        case JobAssignments = "job_assignments"
        case IsOvertimeExempt = "is_overtime_exempt"
        case Version = "version"
        case CreatedAt = "created_at"
        case UpdatedAt = "updated_at"
    }
    
//    required public init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        self.TeamMemberId = try container.decodeIfPresent(String.self, forKey: .TeamMemberId)
//        self.JobAssignments = try container.decodeIfPresent([JobAssignment].self, forKey: .JobAssignments)
//        self.IsOvertimeExempt = try container.decodeIfPresent(Bool.self, forKey: .IsOvertimeExempt)
//        self.Version = try container.decodeIfPresent(Int.self, forKey: .Version)
//        if container.contains(.CreatedAt) {
//            if let dateString = try? container.decodeIfPresent(String.self, forKey: .CreatedAt), !dateString.isEmpty {
//                self.CreatedAt = try dateString.decode_RFC3339_Date(container, forKey: .CreatedAt)
//            }
//        }
//        if container.contains(.UpdatedAt) {
//            if let dateString = try? container.decodeIfPresent(String.self, forKey: .UpdatedAt), !dateString.isEmpty {
//                self.UpdatedAt = try dateString.decode_RFC3339_Date(container, forKey: .UpdatedAt)
//            }
//        }
//    }
}
