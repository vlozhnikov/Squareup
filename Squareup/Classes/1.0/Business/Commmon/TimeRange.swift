//
//  TimeRange.swift
//  Business Calendar
//
//  Created by user on 2.06.23.
//

import Foundation

/// - TimeRange: Represents a generic time range.
/// The start and end values are represented in RFC 3339 format. Time ranges are customized to be inclusive or exclusive based on the needs of a particular endpoint. Refer to the relevant endpoint-specific documentation to determine how time ranges are handled.
/// https://developer.squareup.com/reference/square/objects/TimeRange
open class TimeRange: Codable {
    
    /// - StartAt: A datetime value in RFC 3339 format indicating when the time range starts.
//    var StartAt: Date?
    @FormattedDate<RFC3339_Strategy> var StartAt: Date?
    /// - EndAt: A datetime value in RFC 3339 format indicating when the time range ends.
//    var EndAt: Date?
    @FormattedDate<RFC3339_Strategy> var EndAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case StartAt = "start_at"
        case EndAt = "end_at"
    }
    
//    required public init(from decoder: Decoder) throws {
//
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .StartAt), !dateString.isEmpty {
//            self.StartAt = try dateString.decode_RFC3339_Date(container, forKey: .StartAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .EndAt), !dateString.isEmpty {
//            self.EndAt = try dateString.decode_RFC3339_Date(container, forKey: .EndAt)
//        }
//    }
}
