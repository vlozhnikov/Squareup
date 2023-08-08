//
//  UpdateTeamMemberResponse.swift
//  Squareup
//
//  Created by user on 6.06.23.
//

import Foundation

open class UpdateTeamMemberResponse: SquareupResponse {
    
    public var TeamMember: TeamMember?
    
    enum CodingKeys: String, CodingKey {
        case TeamMember = "team_member"
    }
}
