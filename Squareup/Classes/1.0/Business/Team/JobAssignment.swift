//
//  JobAssignment.swift
//  Squareup
//
//  Created by user on 6.06.23.
//

import Foundation

/// - JobAssignment: An object describing a job that a team member is assigned to.
/// https://developer.squareup.com/reference/square/objects/JobAssignment
open class JobAssignment: Codable {
    
    /// - JobTitle: The title of the job.
    /// Min Length 1
    var JobTitle: String?
    /// - PayType: the current pay type for the job assignment used to calculate the pay amount in a pay period.
    var PayType: JobAssignmentPayType?
    /// - HourlyRate: The hourly pay rate of the job.
    var HourlyRate: Money?
    /// - AnnualRate: The total pay amount for a 12-month period on the job. Set if the job PayType is SALARY
    var AnnualRate: Money?
    /// - WeeklyHours: The planned hours per week for the job. Set if the job PayType is SALARY
    var WeeklyHours: Int?
    
    enum CodingKeys: String, CodingKey {
        case JobTitle = "job_title"
        case PayType = "pay_type"
        case HourlyRate = "hourly_rate"
        case AnnualRate = "AnnualRate"
        case WeeklyHours = "weekly_hours"
    }
}
