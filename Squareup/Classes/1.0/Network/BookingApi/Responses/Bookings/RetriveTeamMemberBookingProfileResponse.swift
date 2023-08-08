//
//  RetriveTeamMemberBookingProfileResponse.swift
//  Business Calendar
//
//  Created by user on 2.06.23.
//

import Foundation

open class RetriveTeamMemberBookingProfileResponse: SquareupResponse {
    
    /// - teamMemberBookingProfile: The returned team member booking profile.
    var teamMemberBookingProfile: TeamMemberBookingProfile?
    
    enum CodingKeys: String, CodingKey {
        case teamMemberBookingProfile = "team_member_booking_profile"
    }
}
