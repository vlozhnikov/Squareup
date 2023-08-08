//
//  ShiftWorkday.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

/// - ShiftWorkday: A Shift search query filter parameter that sets a range of days that a Shift must start or end in before passing the filter condition.
/// https://developer.squareup.com/reference/square/objects/ShiftWorkday
open class ShiftWorkday: Codable {
    
    /// - dateRange: Dates for fetching the shifts.
    var dateRange: DateRange?
    /// - MatchShiftsBy: The strategy on which the dates are applied.
    var MatchShiftsBy: ShiftWorkdayMatcher?
    /// - DefaultTimezone: Location-specific timezones convert workdays to datetime filters. Every location included in the query must have a timezone or this field must be provided as a fallback. Format: the IANA timezone database identifier for the relevant timezone.
    var DefaultTimezone: String?
    
    enum CodingKeys: String, CodingKey {
        case dateRange = "date_range"
        case MatchShiftsBy = "match_shifts_by"
        case DefaultTimezone = "default_timezone"
    }
}
