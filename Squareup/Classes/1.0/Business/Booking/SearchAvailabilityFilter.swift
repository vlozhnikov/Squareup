//
//  SearchAvailabilityFilter.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.06.23.
//

import Foundation

/// - SearchAvailabilityFilter: A query filter to search for buyer-accessible availabilities by.
/// https://developer.squareup.com/reference/square/objects/SearchAvailabilityFilter
open class SearchAvailabilityFilter: Codable {
    
    /// - StartAtRange: Required
    /// The query expression to search for buy-accessible availabilities with their starting times falling within the specified time range. The time range must be at least 24 hours and at most 32 days long. For waitlist availabilities, the time range can be 0 or more up to 367 days long.
    public var StartAtRange: TimeRange?
    /// - LocationId: The query expression to search for buyer-accessible availabilities with their location IDs matching the specified location ID. This query expression cannot be set if booking_id is set.
    /// Max Length 32
    public var LocationId: String?
    /// - SegmentFilters: The query expression to search for buyer-accessible availabilities matching the specified list of segment filters. If the size of the segment_filters list is n, the search returns availabilities with n segments per availability.
    /// This query expression cannot be set if booking_id is set.
    public var SegmentFilters: [SegmentFilter]?
    /// - BookingId: The query expression to search for buyer-accessible availabilities for an existing booking by matching the specified booking_id value. This is commonly used to reschedule an appointment. If this expression is set, the location_id and segment_filters expressions cannot be set.
    /// Max Length 36
    public var BookingId: String?
    
    enum CodingKeys: String, CodingKey {
        case StartAtRange = "start_at_range"
        case LocationId = "location_id"
        case SegmentFilters = "segment_filters"
        case BookingId = "booking_id"
    }
}
