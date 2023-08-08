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
//    var StartAtMin: Date?
    @FormattedDate<RFC3339_Strategy> var StartAtMin: Date?
//    var StartAtMax: Date?
    @FormattedDate<RFC3339_Strategy> var StartAtMax: Date?
    
    enum CodingKeys: String, CodingKey {
        case Limit = "limit"
        case Cursor = "cursor"
        case TeamMemberId = "team_member_id"
        case LocationId = "location_id"
        case StartAtMin = "start_at_min"
        case StartAtMax = "start_at_max"
    }
    
//    required init(from decoder: Decoder) throws {
//        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        if container.contains(.Limit) {
//            self.Limit = try container.decode(Int?.self, forKey: .Limit)
//        }
//        if container.contains(.Cursor) {
//            self.Cursor = try container.decode(String?.self, forKey: .Cursor)
//        }
//        if container.contains(.TeamMemberId) {
//            self.TeamMemberId = try container.decode(String?.self, forKey: .TeamMemberId)
//        }
//        if container.contains(.LocationId) {
//            self.LocationId = try container.decode(String?.self, forKey: .LocationId)
//        }
//        if container.contains(.StartAtMin) {
//            if let dateString = try? container.decode(String.self, forKey: .StartAtMin), !dateString.isEmpty {
//                self.StartAtMin = try dateString.decode_RFC3339_Date(container, forKey: .StartAtMin)
//            }
//        }
//        if container.contains(.StartAtMax) {
//            if let dateString = try? container.decode(String.self, forKey: .StartAtMax), !dateString.isEmpty {
//                self.StartAtMax = try dateString.decode_RFC3339_Date(container, forKey: .StartAtMax)
//            }
//        }
//    }
}
