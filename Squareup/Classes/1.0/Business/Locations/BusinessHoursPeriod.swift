//
//  BusinessHoursPeriod.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 31.03.23.
//

import Foundation

extension [BusinessHoursPeriod] {
    
    public var friendlyTextWithDays: String {
        return self.map { "\($0.dayOfWeek ?? .Unknown) \($0.friendlyText)" }.joined(separator: "\n")
    }
    
    public var friendlyShortTextWithDays: String {
        return self.map { "\($0.dayOfWeek ?? .Unknown) \($0.friendlyShortText)" }.joined(separator: "\n")
    }
    
    public func friendlyText(for day: DayOfWeek) -> String {
        let first = self.first(where: { $0.dayOfWeek == day })
        return "\(first?.dayOfWeek ?? DayOfWeek.Unknown) \(first?.friendlyText ?? "-:-")"
    }
    
    public func friendlyShortText(for day: DayOfWeek) -> String {
        let first = self.first(where: { $0.dayOfWeek == day })
        return "\(first?.friendlyShortText ?? "-:-")"
    }
}

/// - BusinessHoursPeriod: Represents a period of time during which a business location is open.
/// https://developer.squareup.com/reference/square/objects/BusinessHoursPeriod
open class BusinessHoursPeriod: Codable, Comparable {
     
    /// - dayOfWeek: The day of the week for this time period.
    public var dayOfWeek: DayOfWeek?
    /// - StartLocalTime: The start time of a business hours period, specified in local time using partial-time RFC 3339 format. For example, 8:30:00 for a period starting at 8:30 in the morning. Note that the seconds value is always :00, but it is appended for conformance to the RFC.
    public var StartLocalTime = "09:00:00"
    /// - EndLocalTime: The end time of a business hours period, specified in local time using partial-time RFC 3339 format. For example, 21:00:00 for a period ending at 9:00 in the evening. Note that the seconds value is always :00, but it is appended for conformance to the RFC.
    public var EndLocalTime = "18:00:00"
    
    enum CodingKeys: String, CodingKey {
        case dayOfWeek = "day_of_week"
        case StartLocalTime = "start_local_time"
        case EndLocalTime = "end_local_time"
    }
    
    public var friendlyText: String {
        return "\(self.StartLocalTime)-\(self.EndLocalTime)"
    }
    
    public var friendlyShortText: String {
        var from = self.StartLocalTime.split(separator: ":")
        from.removeLast()
        
        var to = self.EndLocalTime.split(separator: ":")
        to.removeLast()
        
        return "\(from.joined(separator: ":"))-\(to.joined(separator: ":"))"
    }
    
    public var friendlyShortFromText: String {
        var from = self.StartLocalTime.split(separator: ":")
        from.removeLast()
        
        return "\(from.joined(separator: ":"))"
    }
    
    public var friendlyShortToText: String {
        var to = self.EndLocalTime.split(separator: ":")
        to.removeLast()
        
        return "\(to.joined(separator: ":"))"
    }
    
    // MARK: Comparable
    
    public static func < (lhs: BusinessHoursPeriod, rhs: BusinessHoursPeriod) -> Bool {
        (lhs.dayOfWeek?.intValue ?? DayOfWeek.Unknown.intValue) < (rhs.dayOfWeek?.intValue ?? DayOfWeek.Unknown.intValue)
    }
    
    // MARK: Equatable
    
    public static func == (lhs: BusinessHoursPeriod, rhs: BusinessHoursPeriod) -> Bool {
        lhs.dayOfWeek?.intValue == rhs.dayOfWeek?.intValue
    }
}

/// - BusinessHours: The hours of operation for a location.
/// https://developer.squareup.com/reference/square/objects/BusinessHours
open class BusinessHours: Codable {
    
    /// - Periods: The list of time periods during which the business is open. There can be at most 10 periods per day.
    public var Periods: [BusinessHoursPeriod]?
    
    enum CodingKeys: String, CodingKey {
        case Periods = "periods"
    }
}
