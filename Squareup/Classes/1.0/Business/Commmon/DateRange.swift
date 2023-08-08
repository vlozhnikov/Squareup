//
//  DateRange.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

/// - DateRange: A range defined by two dates.
/// Used for filtering a query for Connect v2 objects that have date properties.
/// https://developer.squareup.com/reference/square/objects/DateRange
open class DateRange: Codable {
    
    /// - StartAt: A datetime value in RFC 3339 format indicating when the time range starts.
//    var StartAt: Date?
    @FormattedDate<YYYYMMDD_Strategy> public var StartAt: Date?
    /// - EndAt: A datetime value in RFC 3339 format indicating when the time range ends.
//    var EndAt: Date?
    @FormattedDate<YYYYMMDD_Strategy> public var EndAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case StartAt = "start_at"
        case EndAt = "end_at"
    }
    
//    required public init(from decoder: Decoder) throws {
//
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .StartAt), !dateString.isEmpty {
//            self.StartAt = try dateString.decode_YYYYMMDD_Date(container, forKey: .StartAt)
//        }
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .EndAt), !dateString.isEmpty {
//            self.EndAt = try dateString.decode_YYYYMMDD_Date(container, forKey: .EndAt)
//        }
//    }
}
