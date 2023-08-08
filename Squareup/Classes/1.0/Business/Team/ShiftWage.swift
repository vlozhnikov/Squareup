//
//  ShiftWage.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

/// - ShiftWage: The hourly wage rate used to compensate an employee for this shift.
/// https://developer.squareup.com/reference/square/objects/ShiftWage
open class ShiftWage: Codable {
    
    /// - Title: The name of the job performed during this shift.
    var Title: String?
    /// - HourlyRate: Can be a custom-set hourly wage or the calculated effective hourly wage based on the annual wage and hours worked per week.
    var HourlyRate: Money?
    /// - JobId: Read only The id of the job performed during this shift. Square labor-reporting UIs might group shifts together by id. This cannot be used to retrieve the job.
    var JobId: String?
    
    enum CodingKeys: String, CodingKey {
        case Title = "title"
        case HourlyRate = "hourly_rate"
        case JobId = "job_id"
    }
}
