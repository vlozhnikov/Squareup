//
//  SearchAvailabilityQuery.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.06.23.
//

import Foundation

/// - SearchAvailabilityQuery: The query used to search for buyer-accessible availabilities of bookings.
/// https://developer.squareup.com/reference/square/objects/SearchAvailabilityQuery
open class SearchAvailabilityQuery: Codable {
    
    /// - Filter: Required
    /// The query filter to search for buyer-accessible availabilities of existing bookings.
    public var Filter: SearchAvailabilityFilter?
    
    enum CodingKeys: String, CodingKey {
        case Filter = "filter"
    }
}
