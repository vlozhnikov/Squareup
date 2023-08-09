//
//  ListTeamMemberBookingProfilesRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.06.23.
//

import Foundation

internal class ListTeamMemberBookingProfilesRequest: Codable {
    
    /// - BookableOnly: Indicates whether to include only bookable team members in the returned result (true) or not (false).
    var BookableOnly: Bool?
    /// - Limit: The maximum number of results to return in a paged response.
    var Limit: Int?
    /// - Cursor: The pagination cursor from the preceding response to return the next page of the results. Do not set this when retrieving the first page of the results.
    var Cursor: String?
    /// - LocationId: Indicates whether to include only team members enabled at the given location in the returned result.
    var LocationId: String?
    
    enum CodingKeys: String, CodingKey {
        case BookableOnly = "bookable_only"
        case Limit = "limit"
        case Cursor = "cursor"
        case LocationId = "location_id"
    }
}
