//
//  ShiftFilter.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

/// - ShiftFilter: Defines a filter used in a search for Shift records.
/// AND logic is used by Square's servers to apply each filter property specified.
/// https://developer.squareup.com/reference/square/objects/ShiftFilter
open class ShiftFilter: Codable {
    
    /// - LocationIds: Fetch shifts for the specified location.
    var LocationIds: [String]?
    /// - EmployeeIds: Deprecated
    /// Fetch shifts for the specified employees. DEPRECATED at version 2020-08-26. Use team_member_ids instead.
    var EmployeeIds: [String]?
    /// - Status: Fetch a Shift instance by Shift.status.
    var Status: ShiftFilterStatus?
    /// - Start: Fetch Shift instances that start in the time range - Inclusive.
    var Start: TimeRange?
    /// - End: Fetch the Shift instances that end in the time range - Inclusive.
    var End: TimeRange?
    /// - Workday: Fetch the Shift instances based on the workday date range.
    var Workday: ShiftWorkday?
    /// - TeamMemberIds: Fetch shifts for the specified team members. Replaced employee_ids at version "2020-08-26".
    var TeamMemberIds: [String]?
    
    enum CodingKeys: String, CodingKey {
        case LocationIds = "location_ids"
        case EmployeeIds = "employee_ids"
        case Status = "status"
        case Start = "start"
        case End = "end"
        case Workday = "workday"
        case TeamMemberIds = "team_member_ids"
    }
}