//
//  DateRange.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.08.23.
//

import Foundation

/// - DateRange: A range defined by two dates.
/// Used for filtering a query for Connect v2 objects that have date properties.
/// https://developer.squareup.com/reference/square/objects/DateRange
open class DateRange: Codable {
    
    /// - StartAt: A datetime value in RFC 3339 format indicating when the time range starts.
    @FormattedDate<YYYYMMDD_Strategy> public var StartAt: Date?
    /// - EndAt: A datetime value in RFC 3339 format indicating when the time range ends.
    @FormattedDate<YYYYMMDD_Strategy> public var EndAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case StartAt = "start_at"
        case EndAt = "end_at"
    }
}
