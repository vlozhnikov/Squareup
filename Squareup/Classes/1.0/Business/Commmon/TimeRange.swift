//
//  TimeRange.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.06.23.
//

import Foundation

/// - TimeRange: Represents a generic time range.
/// The start and end values are represented in RFC 3339 format. Time ranges are customized to be inclusive or exclusive based on the needs of a particular endpoint. Refer to the relevant endpoint-specific documentation to determine how time ranges are handled.
/// https://developer.squareup.com/reference/square/objects/TimeRange
open class TimeRange: Codable {
    
    /// - StartAt: A datetime value in RFC 3339 format indicating when the time range starts.
    @FormattedDate<RFC3339_Strategy> public var StartAt: Date?
    /// - EndAt: A datetime value in RFC 3339 format indicating when the time range ends.
    @FormattedDate<RFC3339_Strategy> public var EndAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case StartAt = "start_at"
        case EndAt = "end_at"
    }
}
