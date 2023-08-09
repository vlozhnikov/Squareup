//
//  ListBookingRequest.swift
//  Business Calendar
//
//  Created by user on 2.06.23.
//

import Foundation

internal class ListBookingRequest: Codable {
    
    var Limit: Int?
    var Cursor: String?
    var TeamMemberId: String?
    var LocationId: String?
    @FormattedDate<RFC3339_Strategy> var StartAtMin: Date?
    @FormattedDate<RFC3339_Strategy> var StartAtMax: Date?
    
    enum CodingKeys: String, CodingKey {
        case Limit = "limit"
        case Cursor = "cursor"
        case TeamMemberId = "team_member_id"
        case LocationId = "location_id"
        case StartAtMin = "start_at_min"
        case StartAtMax = "start_at_max"
    }
}
