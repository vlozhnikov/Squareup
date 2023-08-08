//
//  TeamMemberWage.swift
//  Squareup
//
//  Created by user on 4.08.23.
//

import Foundation

/// - TeamMemberWage: The hourly wage rate that a team member earns on a Shift for doing the job specified by the title property of this object.
/// https://developer.squareup.com/reference/square/objects/TeamMemberWage
open class TeamMemberWage: Codable {
    
    /// - Id: The UUID for this object.
    public var Id: String?
    /// - TeamMemberId: The TeamMember that this wage is assigned to.
    public var TeamMemberId: String?
    /// - Title: The job title that this wage relates to.
    public var Title: String?
    /// - HourlyRate: Can be a custom-set hourly wage or the calculated effective hourly wage based on the annual wage and hours worked per week.
    public var HourlyRate: Money?
    /// - JobId: An identifier for the job that this wage relates to. This cannot be used to retrieve the job.
    public var JobId: String?
    
    enum CodingKeys: String, CodingKey {
        case Id = "id"
        case TeamMemberId = "team_member_id"
        case Title = "title"
        case HourlyRate = "hourly_rate"
        case JobId = "job_id"
    }
}
