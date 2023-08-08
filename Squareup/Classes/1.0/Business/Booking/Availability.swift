//
//  Availability.swift
//  Business Calendar
//
//  Created by user on 2.06.23.
//

import Foundation

/// - Availability: Defines an appointment slot that encapsulates the appointment segments, location and starting time available for booking.
/// https://developer.squareup.com/reference/square/objects/Availability
open class Availability: Codable {
    
    /// - StartAt: The RFC 3339 timestamp specifying the beginning time of the slot available for booking.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    /// UTC: 2020-01-26T02:25:34Z
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
//    var StartAt: Date?
    @FormattedDate<RFC3339_Strategy> var StartAt: Date?
    /// - LocationId: Read only The ID of the location available for booking.
    /// Max Length 32
    var LocationId: String?
    /// - AppointmentSegments: The list of appointment segments available for booking
    var AppointmentSegments: [AppointmentSegment]?
    
    enum CodingKeys: String, CodingKey {
        case StartAt = "start_at"
        case LocationId = "location_id"
        case AppointmentSegments = "appointment_segments"
    }
//
//    required public init(from decoder: Decoder) throws {
//
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//
//        if let dateString = try? container.decodeIfPresent(String.self, forKey: .StartAt), !dateString.isEmpty {
//            self.StartAt = try dateString.decode_RFC3339_Date(container, forKey: .StartAt)
//        }
//        self.LocationId = try container.decodeIfPresent(String.self, forKey: .LocationId)
//        self.AppointmentSegments = try container.decodeIfPresent([AppointmentSegment].self, forKey: .AppointmentSegments)
//    }
}
