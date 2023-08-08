//
//  CatalogTimePeriod.swift
//  Business Calendar
//
//  Created by user on 1.05.23.
//

import Foundation

/// - CatalogTimePeriod: Represents a time period - either a single period or a repeating period.
/// https://developer.squareup.com/reference/square/objects/CatalogTimePeriod
open class CatalogTimePeriod: Codable {
    
    /// - Event: An iCalendar (RFC 5545) event, which specifies the name, timing, duration and recurrence of this time period.
    /// Example:
    ///     DTSTART:20190707T180000
    ///     DURATION:P2H
    ///     RRULE:FREQ=WEEKLY;BYDAY=MO,WE,FR
    /// Only SUMMARY, DTSTART, DURATION and RRULE fields are supported. DTSTART must be in local (unzoned) time format. Note that while BEGIN:VEVENT and END:VEVENT is not required in the request. The response will always include them.
    public var Event: String?
    
    enum CodingKeys: String, CodingKey {
        case Event = "event"
    }
}
