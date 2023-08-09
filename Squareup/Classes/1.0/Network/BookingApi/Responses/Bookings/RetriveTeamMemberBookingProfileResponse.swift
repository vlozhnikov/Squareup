//
//  RetriveTeamMemberBookingProfileResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.06.23.
//

import Foundation

open class RetriveTeamMemberBookingProfileResponse: SquareupResponse {
    
    /// - teamMemberBookingProfile: The returned team member booking profile.
    var teamMemberBookingProfile: TeamMemberBookingProfile?
    
    enum CodingKeys: String, CodingKey {
        case teamMemberBookingProfile = "team_member_booking_profile"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.teamMemberBookingProfile = try container.decodeIfPresent(TeamMemberBookingProfile.self, forKey: .teamMemberBookingProfile)
    }
}
