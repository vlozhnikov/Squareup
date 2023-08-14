//
//  ListTeamMemberBookingProfilesResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.06.23.
//

import Foundation

open class ListTeamMemberBookingProfilesResponse: SquareupResponse {
    
    ///- TeamMemberBookingProfiles: The list of team member booking profiles. The results are returned in the ascending order of the time when the team member booking profiles were last updated. Multiple booking profiles updated at the same time are further sorted in the ascending order of their IDs.
    public var TeamMemberBookingProfiles: [TeamMemberBookingProfile]?
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case TeamMemberBookingProfiles = "team_member_booking_profiles"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.TeamMemberBookingProfiles = try container.decodeIfPresent([TeamMemberBookingProfile].self, forKey: .TeamMemberBookingProfiles)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
